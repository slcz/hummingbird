// single 8 input nand
module ttl_7430(
    input [7:0] a,
    output y
);
    assign y = !&a;
endmodule
