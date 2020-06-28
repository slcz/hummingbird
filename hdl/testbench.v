module testbench;
    reg reset = 1;
    reg clock = 0;

    wire done = 1'b0;

    wire [7:0]in_idev0;
    assign in_idev0 = 8'b0;
    wire [3:0] phase_out;
    wire [11:0] pc_out;
    wire bootloader_done_out;
    wire [7:0] ram_word_out;
    wire [15:0] control_signals_out;
    wire [7:0] a_register_rd_out;
    wire [7:0] instruction_out;
    wire [7:0] oprnd_out;
    wire [7:0] alu_out;
    wire [17:0] databuf2_out;
    wire [1:0] rammod_out;
    wire [11:0] io_address_out;
    wire fetch_en_out;
    wire [5:0] alu_mode;
    wire nop_out;
    wire hlt_out;
    wire [7:0] out_odev0;
    wire [7:0] out_odev1;

    hummingbird cpu(
        .rst_pb_bar (reset),
        .clk        (clock),
        .in_idev0,
        .phase_out,
        .pc_out,
        .bootloader_done_out,
        .ram_word_out,
        .control_signals_out,
        .a_register_rd_out,
        .instruction_out,
        .oprnd_out,
        .alu_out,
        .databuf2_out,
        .rammod_out,
        .io_address_out,
        .fetch_en_out,
        .alu_mode,
        .nop_out,
        .hlt_out,
        .out_odev0,
        .out_odev1
    );

    initial
    begin
        $dumpfile("hummingbird.vcd");
        $dumpvars(0, cpu);
        clock = 1;
        reset = 0; #1
        clock = 0; #1
        clock = 1; #1
        clock = 0; #1
        reset = 1;
        while (bootloader_done_out == 1'b0 || hlt_out == 1'b0)
        begin
            clock = 1;
            #1;
            clock = 0;
            #1;
        end
    end
endmodule
