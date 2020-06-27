/* verilator lint_off UNOPTFLAT */
module ttl_7421(
    input [3:0] a,
    input [3:0] b,
    output ya,
    output yb
);
    assign ya = &a;
    assign yb = &b;
endmodule
