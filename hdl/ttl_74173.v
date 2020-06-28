module ttl_74173(
    input rst,
    input clk,
    input [3:0] d,
    output [3:0] q,
    input e1,
    input e2,
    input oe1,
    input oe2
);
    logic [3:0] data;
    assign q = (!oe1 & !oe2) ? data : 4'bz;
    always_ff @(posedge clk, posedge rst)
    begin
        if (rst)
            data <= 4'b0;
        else if (!e1 & !e2 & clk)
            data <= d;
    end
    initial data = $random();
endmodule
