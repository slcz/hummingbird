module ttl_74377(
    input clk,
    input  [7:0] d,
    output [7:0] q,
    input e
);
    logic [7:0] data;
    assign q = data;
    always_ff @(posedge clk)
    begin
        if (!e & clk)
            data <= d;
    end

endmodule
