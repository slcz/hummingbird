// octal bus tranceiver; 3 state
module ttl_74245(
    input  dir,
    input  oe_bar,
    input  [7:0]a_in,
    input  [7:0]b_in,
    output [7:0]a_out,
    output [7:0]b_out
);
    assign a_out = !dir & !oe_bar ? b_in : 8'bz;
    assign b_out =  dir & !oe_bar ? a_in : 8'bz;
endmodule
