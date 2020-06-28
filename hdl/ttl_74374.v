// octal d-type edge-triggered flip-flops
module ttl_74374(
    input ocbar,
    input clk,
    input  [7:0]d,
    output [7:0]q
);
    logic [7:0] output_q;
    assign q = ocbar ? 8'bz : output_q;
    always_ff @(posedge clk)
    begin
        output_q <= d;
    end
endmodule
