module testbench;
    reg reset = 1;
    reg clock = 0;

    wire done = 1'b0;

    wire [7:0] dev0_i;
    assign dev0_i = 8'b0;
    wire is_hlt, test_bl_done;

    hummingbird cpu(
        .rst_btn_b      (reset),
        .clk            (clock),
        .dev0_i,
        .test_phase     (),
        .test_pc        (),
        .test_bl_done,
        .test_databus   (),
        .test_ctrl_sig  (),
        .test_a_reg_rd  (),
        .test_inst      (),
        .test_oprnd_rd  (),
        .test_alu_o     (),
        .test_oprnd_buf (),
        .test_io_address(),
        .test_fetch_en  (),
        .test_alumode   (),
        .test_hlt       (is_hlt),
        .test_dev0_data_o(),
        .test_dev1_data_o()
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
        while (test_bl_done == 1'b0 || is_hlt == 1'b0)
        begin
            clock = 1;
            #1;
            clock = 0;
            #1;
        end
    end
endmodule
