module counter12b(
    input [11:0] D,
    input rst,
    input load,
    input clk,
    input incpc,
    output [11:0] Q,
    output rco
);
    wire rco_low, rco_mid;
    ttl_74163 cnt_low(
        .Clear_bar (rst),
        .Load_bar  (load),
        .Clk       (clk),
        .ENP       (1'b1),
        .ENT       (incpc),
        .D         (D[3:0]),
        .RCO       (rco_low),
        .Q         (Q[3:0])
    );
    ttl_74163 cnt_mid(
        .Clear_bar (rst),
        .Load_bar  (load),
        .Clk       (clk),
        .ENP       (1'b1),
        .ENT       (rco_low),
        .D         (D[7:4]),
        .RCO       (rco_mid),
        .Q         (Q[7:4])
    );
    ttl_74163 cnt_hi(
        .Clear_bar (rst),
        .Load_bar  (load),
        .Clk       (clk),
        .ENP       (1'b1),
        .ENT       (rco_mid),
        .D         (D[11:8]),
        .RCO       (rco),
        .Q         (Q[11:8])
    );

endmodule
