module reg8b_2state(
    input clk,
    input [7:0] d_in,
    output [7:0] d_out,
    input r_w
);
    ttl_74377 r(
        .clk,
        .d (d_in),
        .q (d_out),
        .e (r_w)
    );
endmodule
