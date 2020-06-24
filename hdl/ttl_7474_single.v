module ttl_7474_single(
    input rd, // reset, active low
    input sd, // set, active low
    input d,
    output q,
    output qbar,
    input clk
);
    logic data;
    assign q =
        (!sd & rd) ? 1'b1 : (sd & !rd) ? 1'b0 : (!sd & !rd) ? 1'b1 : data;
    assign qbar =
        (!sd & rd) ? 1'b0 : (sd & !rd) ? 1'b1 : (!sd & !rd) ? 1'b1 : !data;
    always_ff @(posedge clk)
    begin
        data <= d;
    end
endmodule
