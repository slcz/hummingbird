module ram(
    input rst,
    input clk,
    output done,
    output [7:0] d_o,
    output [7:0] d_i
);
    logic rco;
    wire rco_in;
    logic [11:0] address;
    logic [7:0]  data_i;

    assign d_i = data_i;

    logic copy_done;

    assign done = copy_done;
    assign rco_in = rco;

    always @(posedge rst, posedge clk)
    begin
        copy_done <= (!rst) ? 1'b0 : (rco_in | copy_done);
    end

    counter12b counter(
        .D      (12'b0),
        .rst    (rst),
        .load   (1'b1),
        .clk    (clk),
        .incpc  (1'b1),
        .Q      (address),
        .rco    (rco_in)
    );

    eeprom_wrap rom(
        .a      ({1'b0, address}),
        .we     (1'b1),
        .oe     (copy_done),
        .ce     (1'b0),
        .io     (data_i)
    );

    cy7c199 ram(
        .a      ({3'b0, address}),
        .we     (copy_done),
        .oe     (!copy_done),
        .ce     (clk),
        .data_o (data_o),
        .data_i (data_i)
    );

endmodule
