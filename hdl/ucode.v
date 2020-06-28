
module ucode(
    input [11:0] i,
    output [15:0] o
);
    eeprom #("ucode.01") u0(
        .a ({1'b0, i}),
        .we (1'b1),
        .oe (1'b0),
        .ce (1'b0),
        .io (o[15:8])
    );

    eeprom #("ucode.02") u1(
        .a ({1'b0, i}),
        .we (1'b1),
        .oe (1'b0),
        .ce (1'b0),
        .io (o[7:0])
    );
endmodule
