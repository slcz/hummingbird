// octal buffer line drivers w. 3 state output
module ttl_74244(
    input  [1:0] oe,
    input  [7:0] a,
    output [7:0] y
);
    assign y[3:0] = oe[0] ? 4'bz : a[3:0];
    assign y[7:4] = oe[1] ? 4'bz : a[7:4];
endmodule
