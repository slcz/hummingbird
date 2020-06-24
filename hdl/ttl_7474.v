// dual d-type flip-flop with set and reset; positve edge trigger
module ttl_7474(
    input rd1,
    input rd2,
    input sd1,
    input sd2,
    input d1,
    input d2,
    output q1,
    output q2,
    output qbar1,
    output qbar2,
    input clk1,
    input clk2
);
    ttl_7474_single flipflop1(
        .rd (rd1),
        .sd (sd1),
        .d (d1),
        .q (q1),
        .qbar (qbar1),
        .clk (clk1)
    );

    ttl_7474_single flipflop2(
        .rd (rd2),
        .sd (sd2),
        .d (d2),
        .q (q2),
        .qbar (qbar2),
        .clk (clk2)
    );
endmodule
