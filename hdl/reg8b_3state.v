module reg8b_3state(
    input clk,
    input [7:0] d_in,
    output [7:0] d_out,
    input wr_bar,
    input rd_bar
);
    ttl_74173 reg_lo(
        .rst (0'b0),
        .clk,
        .d (d_in[3:0]),
        .q (d_out[3:0]),
        .e1 (wr_bar),
        .e2 (wr_bar),
        .oe1 (rd_bar),
        .oe2 (rd_bar)
    );
    ttl_74173 reg_hi(
        .rst (0'b0),
        .clk,
        .d (d_in[7:4]),
        .q (d_out[7:4]),
        .e1 (wr_bar),
        .e2 (wr_bar),
        .oe1 (rd_bar),
        .oe2 (rd_bar)
    );
endmodule
