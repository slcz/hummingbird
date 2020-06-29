//
// Hummingbird 8 bit CPU
//

module hummingbird(
    input           rst_btn_b,
    input           clk,
    input     [7:0] dev0_i,
    output    [3:0] test_phase,
    output   [11:0] test_pc,
    output          test_bl_done,
    output    [7:0] test_databus,
    output   [15:0] test_ctrl_sig,
    output    [7:0] test_a_reg_rd,
    output    [7:0] test_inst,
    output    [7:0] test_oprnd_rd,
    output    [7:0] test_alu_o,
    output   [17:0] test_oprnd_buf,
    output   [11:0] test_io_address,
    output          test_fetch_en,
    output    [5:0] test_alumode,
    output          test_nop,
    output          test_hlt,
    output    [7:0] test_dev0_data_o,
    output    [7:0] test_dev1_data_o
);
    wire pc_overflow;
    // bootloader completed
    wire bl_done;
    wire bl_activ;
    // carry and zero flags
    wire c_b, z;
    // control signals
    wire incpc, loadpc_b, load_areg_b, loadf_b, alu_cin_b, m;
    wire [3:0] s;
    wire address_f_databus_b, csram_b, weram_b, areg_o_en_b;
    wire oprnd_o_en_b, phase_rst_b;
    wire rst_b;

    assign test_bl_done = bl_done;

    // U1: bootload done generator
    // U2: reset generator
    // pc overflow signal nor'ed with bl_done feedback
    wire pc_ovf_bl_done_fb;
    ttl_7474 reset_bl_flag_gen(
        .rd1  (1'b1),
        .sd1  (rst_b),
        .clk1 (clk),
        .d1   (pc_ovf_bl_done_fb),
        .qbar1(bl_done),
        .q1   (bl_activ),

        .rd2  (1'b1),
        .sd2  (1'b1),
        .clk2 (clk),
        .d2   (rst_btn_b),
        .q2   (rst_b),
        .qbar2()
    );

    // phase signal
    wire [3:0] phase;
    wire phase_rst_b_i;
    assign test_phase = phase;
    ttl_74163 phase_gen(
        .Clear_bar (phase_rst_b_i),
        .Load_bar  (1'b1),
        .Clk       (clk),
        .ENP       (1'b1),
        .ENT       (1'b1),
        .D         (4'b0),
        .RCO       (),
        .Q         (phase)
    );

    wire [7:0] databus;

    // program counter
    wire [11:0] pc;
    assign test_pc = pc;
    counter12b pc_gen(
        .rst    (rst_b),
        .D      ({instruction[3:0], databus}),
        .load   (loadpc_b),
        .clk    (clk),
        .incpc  (incpc),
        .Q      (pc),
        .rco    (pc_overflow)
    );

    // program store
    eeprom_wrap program_store(
        .a      ({1'b0, pc}),
        .we     (1'b1),
        .oe     (1'b0),
        .ce     (bl_done),
        .io     (databus)
    );

    // ram access window is when clock is low and csram control signal
    // is low.
    wire ram_access_b;

    wire phase0_b, phase02, phase13;
    ttl_7432 quad_2in_or(
        .a      ({ phase02,    phase[0], phase[1], clk         }),
        .b      ({ phase13,    phase[2], phase[3], csram_b     }),
        .y      ({phase0_b,    phase02,  phase13,  ram_access_b})
    );

    wire io_space;

    // RAM
    wire [11:0] io_address;
    wire ram_en_b;
    cy7c199 ram(
        .a      ({3'b0, io_address}),
        .we     (weram_b),
        .oe     (1'b0),
        .ce     (ram_en_b),
        .data_i (databus),
        .data_o (databus)
    );
    assign test_io_address = io_address;

    wire [7:0] address_word_lo8;
    // keep the ram output from the last cycle.
    ttl_74374  address_lock(
        .ocbar  (1'b0),
        .clk    (clk),
        .d      (databus),
        .q      (address_word_lo8)
    );

    // Address mux: select the address from data bus or program counter
    addrmux addrmux(
        .abarb (address_f_databus_b),
        .a     ({instruction[3:0], address_word_lo8}),
        .b     (pc),
        .y     (io_address)
    );

    // Fetch register, fetch instruction at phase 0
    wire [7:0] instruction;
    ttl_74377 inst_fetch(
        .clk    (clk),
        .e      (phase0_b),
        .d      (databus),
        .q      (instruction)
    );
    assign test_fetch_en = |phase;

    // ucode
    assign test_hlt = bl_done && (uc_inst_i == 5'b11011);
    wire [15:0] control_signals;
    assign {
        incpc,
        loadpc_b,
        load_areg_b,
        loadf_b,
        alu_cin_b,
        m,
        s,
        address_f_databus_b,
        csram_b,
        weram_b,
        areg_o_en_b,
        oprnd_o_en_b,
        phase_rst_b
    } = control_signals;

    assign test_ctrl_sig = control_signals;

    // single byte no operand instruction's top nibble is 4'b1111
    // (F-instruction)
    wire f_inst;
    wire [4:0] uc_inst_i;
    ttl_74157 uc_inst_input_sel(
        .abarb (f_inst),
        .a (instruction[7:4]),
        .b (instruction[3:0]),
        .y (uc_inst_i[3:0]),
        .gbar (1'b0)
    );
    assign uc_inst_i[4] = f_inst;
    // ucode: input instruction + flags + bootloader done + phase
    //        output 16b control signals
    ucode ucode_eeprom(
        .i ({uc_inst_i, c_b, z, bl_done, phase}),
        .o (control_signals)
    );

    // oprand sign extend or shift left if LIH
    wire lih;
    wire [7:0] oprnd8b;
    ttl_74157 oprnd_sel_lo(
        .abarb (lih),
        .a (instruction[3:0]),
        .b (4'b0),
        .y (oprnd8b[3:0]),
        .gbar (1'b0)
    );
    ttl_74157 oprnd_sel_hi(
        .abarb (lih),
        .a ({4{instruction[3]}}),
        .b (instruction[3:0]),
        .y (oprnd8b[7:4]),
        .gbar (1'b0)
    );
    assign test_inst = instruction;

    wire cn_alu_b;
    wire [7:0] a_register_rd;

    assign test_databus = databus;

    // A register output to databus
    ttl_74244 a_reg_buf(
        .oe     ({areg_o_en_b, areg_o_en_b}),
        .a      (a_register_rd),
        .y      (databus)
    );

    assign test_oprnd_rd = oprnd8b;
    // Operand output to databus
    ttl_74244 oprnd_buf(
        .oe     ({oprnd_o_en_b, oprnd_o_en_b}),
        .a      (oprnd8b),
        .y      (databus)
    );
    assign test_oprnd_buf = {oprnd_o_en_b, oprnd_o_en_b, oprnd8b, databus};

    // ALU
    wire [7:0] alu_f;
    assign test_alu_o = alu_f;
    alu8b alu(
        .A      (a_register_rd),
        .B      (databus),
        .S      (s),
        .M      (m),
        .cin    (alu_cin_b),
        .F      (alu_f),
        .cout   (cn_alu_b),
        .eq     ()
    );
    assign test_alumode = {m, s, alu_cin_b};

    // A reg
    assign test_a_reg_rd = a_register_rd;
    reg8b_2state a_register(
        .clk    (clk),
        .d_in   (alu_f),
        .d_out  (a_register_rd),
        .r_w    (load_areg_b)
    );

    // Z flag output from ALU result
    wire z_alu;
    wire [3:0]z_alu_mid;
    ttl_7402 quad_2_in_nor_1(
        .a      (alu_f[3:0]),
        .b      (alu_f[7:4]),
        .y      (z_alu_mid)
    );
    ttl_7421 dual_4_in_and(
        .a      (z_alu_mid),
        .b      ({io_address[11:8]}),
        .ya     (z_alu),
        .yb     (io_space)
    );
    wire inst76_and;
    // generate lih, phase_rst_b_i and f_inst control signals
    // lih = &instruction[7:5], either lih or f instructions
    ttl_7408 quad_2_in_and(
        .a({instruction[7], inst76_and,     rst_b,          instruction[4]}),
        .b({instruction[6], instruction[5], phase_rst_b,    lih           }),
        .y({inst76_and,     lih,            phase_rst_b_i,  f_inst        })
    );

    // flag reg
    wire [3:0] flag;
    assign c_b = flag[1];
    assign z   = flag[0];
    reg4b flag_register(
        .clk    (clk),
        .d_in   ({2'b0, cn_alu_b, z_alu}),
        .d_out  (flag),
        .wr_bar (loadf_b),
        .rd_bar (1'b0)
    );

    wire addr_decode_ram_sel;

    wire x1, unused;
    // ram_en_b = io_space == 1'b0 && ram_access_b == 1'b0
    // Also latch pc_overflow signal
    ttl_7402 quad_2_in_nor_2(
        .a      ({1'b0,   io_space,      x1,       pc_overflow}),
        .b      ({1'b0,   ram_access_b,  1'b0,     bl_done}),
        .y      ({unused, x1,            ram_en_b, pc_ovf_bl_done_fb})
    );

    // 3 bit select IO devices 0 - 7. 0-3 are output devices and 4-7 are
    // input devices.
    // Device assignment, 0: odev0, 1: odev1, 5: idev0
    wire [7:0]device_sel;
    ttl_74138 device_mux(
        .e      ({io_space, bl_activ, csram_b}),
        .a      ({weram_b, io_address[1:0]}),
        .o      ({device_sel})
    );

    reg8b_2state odev0_reg(
        .clk,
        .d_in   (databus),
        .d_out  (test_dev0_data_o),
        .r_w    (device_sel[0])
    );

    reg8b_2state odev1_reg(
        .clk,
        .d_in   (databus),
        .d_out  (test_dev1_data_o),
        .r_w    (device_sel[1])
    );

    ttl_74374 idev0_reg(
        .ocbar  (device_sel[5]),
        .clk,
        .d      (dev0_i),
        .q      (databus)
    );
endmodule
