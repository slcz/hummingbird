module reg4b(
    input clk,
    input [3:0] d_in,
    output [3:0] d_out,
    input wr,
    input rd
);
    ttl_74173 reg_lo(
        .rst (0'b0),
        .clk,
        .d (d_in),
        .q (d_out),
        .e1 (!wr),
        .e2 (!wr),
        .oe1 (!rd),
        .oe2 (!rd)
    );
endmodule
