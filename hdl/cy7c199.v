// cy7c199 32kx8 SRAM

module cy7c199(
    input [14:0] a,
    input we,
    input oe,
    input ce,
    output [7:0] data_o,
    input  [7:0] data_i
);
    reg[7:0] memory[0:32767];
    logic [7:0] out_x;
    assign data_o = out_x;
    assign out_x = (!oe && !ce && we) ? memory[a] : 8'bz;
    always @(posedge ce or negedge ce)
    begin
        if (!ce && !we) begin
            memory[a] <= data_i;
        end
    end
    integer i;
    initial begin
        for (i = 0; i < 32767; i ++)
        begin
            memory[i] = 0;
        end
    end
endmodule
