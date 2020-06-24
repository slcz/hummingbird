
module alu8b(
    input [7:0] A,
    input [7:0] B,
    input [3:0] S,
    input M,
    input cin,
    output [7:0] F,
    output cout,
    output eq
);
    logic cout_lo;
    logic X_unused_lo, Y_unused_lo, AEB_lo;
    logic X_unused_hi, Y_unused_hi, AEB_hi;
    assign eq = AEB_lo & AEB_hi;
    Circuit74181 alu_lo(
        .A (A[3:0]),
        .B (B[3:0]),
        .S (S),
        .M (M),
        .CNb (cin),
        .F (F[3:0]),
        .CN4b (cout_lo),
        .X (X_unused_lo),
        .Y (Y_unused_lo),
        .AEB (AEB_lo)
    );
    Circuit74181 alu_hi(
        .A (A[7:4]),
        .B (B[7:4]),
        .S (S),
        .M (M),
        .CNb (cout_lo),
        .F (F[7:4]),
        .CN4b (cout),
        .X (X_unused_hi),
        .Y (Y_unused_hi),
        .AEB (AEB_hi)
    );
endmodule
