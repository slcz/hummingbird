// quadruple 2-line to 1-line data selectors/multiplexers
module ttl_74157(
    input abarb,
    input  [3:0] a,
    input  [3:0] b,
    output [3:0] y,
    input gbar
);
    assign y = abarb ? b : a;
endmodule
