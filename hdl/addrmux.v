module addrmux(
    input abarb,
    input [11:0] a,
    input [11:0] b,
    output [11:0] y
);
    ttl_74157 u0(
        .abarb,
        .a (a[11:8]),
        .b (b[11:8]),
        .y (y[11:8]),
        .gbar (1'b0)
    );
    ttl_74157 u1(
        .abarb,
        .a (a[7:4]),
        .b (b[7:4]),
        .y (y[7:4]),
        .gbar (1'b0)
    );
    ttl_74157 u2(
        .abarb,
        .a (a[3:0]),
        .b (b[3:0]),
        .y (y[3:0]),
        .gbar (1'b0)
    );
endmodule
