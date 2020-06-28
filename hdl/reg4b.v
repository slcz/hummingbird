module reg4b(
    input clk,
    input [3:0] d_in,
    output [3:0] d_out,
    input wr_bar,
    input rd_bar
);
    ttl_74173 reg_lo(
        .rst (1'b0),
        .clk,
        .d (d_in),
        .q (d_out),
        .e1 (wr_bar),
        .e2 (wr_bar),
        .oe1 (rd_bar),
        .oe2 (rd_bar)
    );
endmodule
