module ttl_74138(
    input  [2:0] e,
    input  [2:0] a,
    output [7:0] o
);
    assign o = (e == 3'b100) ? ~(8'b1 << a) : 8'b11111111;
endmodule
