// at28c64

module eeprom #(parameter string name[8] = "rom0.mem")(
    input [12:0] a,
    input we,
    input oe,
    input ce,
    output [7:0] io
);

    reg[7:0] memory[0:8191];
    initial begin
        $display("loading rom");
        $readmemh(name, memory);
    end
    logic [7:0]x;
    assign io = x;
    always_comb
    begin
        x = (oe == 1'b0 && ce == 1'b0 && we == 1'b1) ? memory[a] : 8'bz;
    end
        
endmodule
