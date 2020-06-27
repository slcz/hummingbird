//
// Hummingbird 8 bit CPU
//

module hummingbird(
    input rst_bar,
    input clk,
    output [3:0] phase_out,
    output [11:0] pc_out,
    output bootloader_done_out,
    output [7:0] ram_word_out,
    output [15:0] control_signals_out,
    output [7:0] a_register_rd_out,
    output [7:0] instruction_out,
    output [7:0] oprnd_out,
    output [7:0] alu_out,
    output [17:0] databuf2_out,
    output [1:0] rammod_out,
    output [11:0] ram_address_out,
    output fetch_en_out,
    output [5:0] alu_mode,
    output nop_out,
    output hlt_out
);
    wire unused;
	wire bootloader_pulse;
    wire bootloader_delay;
    wire bootloader_done;
    wire c_bar, z;
    // control signals
    wire incpc, loadpc_bar, loada_bar, loadf_bar, cn_bar, m;
    wire [3:0] s;
    wire loadaddr_bar, csram_bar, weram_bar, oealu_bar,
         oeoprnd_bar, phase_reset;

    assign bootloader_done_out = bootloader_done;

    // 7474 => bootloader_done, delays one cycle, since bootloader is set
    // when PC = 12'b1.
    ttl_7474 bootloader_done_mod(
        .rd1  (rst_bar),
        .sd1  (1'b1),
        .clk1 (clk),
        .d1   (bootloader_pulse),
        .q1   (bootloader_delay),
        .qbar1(unused),

        .rd2  (rst_bar),
        .sd2  (1'b1),
        .clk2 (bootloader_delay),
        .d2   (1'b1),
        .q2   (bootloader_done),
        .qbar2(unused)
    );

    // phase signal
    wire [3:0] phase;
    assign phase_out = phase;
    ttl_74163 phase_mod(
        .Clear_bar (rst_bar & phase_reset),
        .Load_bar  (1'b1),
        .Clk       (clk),
        .ENP       (1'b1),
        .ENT       (1'b1),
        .D         (4'b0),
        .RCO       (unused),
        .Q         (phase)
    );

    // program counter
    wire [11:0] pc;
    assign pc_out = pc;
    counter12b pc_mode(
        .rst    (rst_bar),
        .D      ({instruction[3:0], databus}),
        .load   (loadpc_bar),
        .clk    (clk),
        .incpc  (incpc),
        .Q      (pc),
        .rco    (bootloader_pulse)
    );

    // program store
    eeprom_wrap program_store_mod(
        .a      ({1'b0, pc}),
        .we     (1'b1),
        .oe     (1'b0),
        .ce     (bootloader_done),
        .io     (databus)
    );

    wire phase0, phase02, phase13;
    ttl_7432 or1_mod(
        .a      ({phase02,    phase[0], phase[1], clk}),
        .b      ({phase13,    phase[3], phase[2], csram_bar}),
        .y      ({phase0,     phase02,  phase13, ram_ce0})
    );

    wire ram_chip_sel;
    assign ram_ce = ram_ce0 | !ram_chip_sel;

    // RAM
    wire [11:0] ram_address;
    wire ram_ce0, ram_ce;
    cy7c199 ram_mod(
        .a      ({3'b0, ram_address}),
        .we     (weram_bar),
        .oe     (1'b0),
        .ce     (ram_ce),
        .data_i (databus),
        .data_o (databus)
    );
    assign rammod_out[0] = databus === 8'bz;
    assign ram_address_out = ram_address;

    wire [7:0] address_word_lo8;
    // lock the ram output
    reg8b_2state address_lock_mod(
        .clk    (clk),
        .d_in   (databus),
        .d_out  (address_word_lo8),
        .r_w    (0'b0)
    );

    // Address mux
    addrmux addrmux_mod(
        .abarb (loadaddr_bar),
        .a     ({instruction[3:0], address_word_lo8}),
        .b     (pc),
        .y     (ram_address)
    );

    // Fetch register, fetch at phase 0
    wire [7:0] instruction;
    ttl_74377 inst_fetch_mod(
        .clk    (clk),
        .e      (phase0),
        .d      (databus),
        .q      (instruction)
    );
    assign fetch_en_out = |phase;

    // ucode
    assign nop_out = bootloader_done && (ucode_i == 5'b10001);
    assign hlt_out = bootloader_done && (ucode_i == 5'b11011);
    wire [15:0] control_signals;
    assign {
        incpc, loadpc_bar, loada_bar, loadf_bar, cn_bar, m,
        s, loadaddr_bar, csram_bar, weram_bar, oealu_bar,
        oeoprnd_bar, phase_reset
    } = control_signals;

    assign control_signals_out = control_signals;

    wire [4:0] ucode_i;
    ttl_74157 ucode_input_sel_mod(
        .abarb (f_inst),
        .a (instruction[7:4]),
        .b (instruction[3:0]),
        .y (ucode_i[3:0]),
        .gbar (1'b0)
    );
    assign ucode_i[4] = f_inst;
    ucode ucode_mod(
        .i ({ucode_i, c_bar, z, bootloader_done, phase}),
        .o (control_signals)
    );

    // oprand sign extend, shift
    wire lih;
    wire [7:0] oprnd;
    ttl_74157 oprnd_sel_lo_mod(
        .abarb (lih),
        .a (instruction[3:0]),
        .b (4'b0),
        .y (oprnd[3:0]),
        .gbar (1'b0)
    );
    ttl_74157 oprnd_sel_hi_mod(
        .abarb (lih),
        .a ({4{instruction[3]}}),
        .b (instruction[3:0]),
        .y (oprnd[7:4]),
        .gbar (1'b0)
    );
    assign instruction_out = instruction;

    wire cnout_bar;
    wire [7:0] alu_word;
    wire [7:0] databus;
    wire [7:0] a_register_rd;

    assign ram_word_out = databus;

    // Data bus
    ttl_74244 databus_buf_1(
        .oe     ({oealu_bar, oealu_bar}),
        .a      (a_register_rd),
        .y      (databus)
    );

    assign oprnd_out = oprnd;
    ttl_74244 databus_buf_2(
        .oe     ({oeoprnd_bar, oeoprnd_bar}),
        .a      (oprnd),
        .y      (databus)
    );
    assign databuf2_out = {oeoprnd_bar, oeoprnd_bar, oprnd, databus};

    // ALU
    assign alu_out = alu_word;
    alu8b alu_mod(
        .A      (a_register_rd),
        .B      (databus),
        .S      (s),
        .M      (m),
        .cin    (cn_bar),
        .F      (alu_word),
        .cout   (cnout_bar),
        .eq     (unused)
    );
    assign alu_mode = {m, s, cn_bar};

    // A reg
    assign a_register_rd_out = a_register_rd;
    reg8b_3state a_register_mod(
        .clk    (clk),
        .d_in   (alu_word),
        .d_out  (a_register_rd),
        .wr_bar (loada_bar),
        .rd_bar (1'b0)
    );
    wire [7:0] alu_word;

    wire z_alu;
    wire [3:0]z_alu_mid;
    ttl_7402 nor1_mod(
        .a      (alu_word[3:0]),
        .b      (alu_word[7:4]),
        .y      (z_alu_mid)
    );
    ttl_7421 and4_1_mod(
        .a      (z_alu_mid),
        .b      ({instruction[7:5], 1'b1}),
        .ya     (z_alu),
        .yb     (lih)
    );
    wire f_inst;
    wire [2:0] f_inst_unused;
    ttl_7408 and2_1_mod(
        .a      ({3'b0, lih}),
        .b      ({3'b0, instruction[4]}),
        .y      ({f_inst_unused, f_inst})
    );

    // flag reg
    wire [3:0] flag_word;
    assign c_bar = flag_word[1];
    assign z     = flag_word[0];
    reg4b flag_register_mod(
        .clk    (clk),
        .d_in   ({2'b0, cnout_bar, z_alu}),
        .d_out  (flag_word),
        .wr_bar (loadf_bar),
        .rd_bar (1'b0)
    );

    wire addr_decode_ram_sel;
    ttl_7430 addr_decode_mod(
        .a (ram_address[11:4]),
        .y (ram_chip_sel)
    );

    wire [7:0] out_odev0;
    reg8b_3state odev0_mod(
        .clk    (clk),
        .d_in   (databus),
        .d_out  (out_odev0),
        .wr_bar (csram_bar | weram_bar | ram_chip_sel | ram_address[0]),
        .rd_bar (1'b0)
    );

    wire [7:0] out_odev1;
    reg8b_3state odev1_mod(
        .clk    (clk),
        .d_in   (databus),
        .d_out  (out_odev1),
        .wr_bar (csram_bar | weram_bar | addr_decode_ram_sel | ram_address[1]),
        .rd_bar (1'b0)
    );
endmodule
