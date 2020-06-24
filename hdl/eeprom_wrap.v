
module eeprom_wrap(
    input [12:0] a,
    input we,
    input oe,
    input ce,
    output [7:0] io
);
    eeprom #("rom0.mem") u0(.a, .we, .oe, .ce, .io);
endmodule
