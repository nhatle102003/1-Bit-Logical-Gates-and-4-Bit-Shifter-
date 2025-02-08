module left_shift_arithmtic_circuit_module (A, X);

    input [3:0] A;

    output [3:0] X;
    
    assign X = A << 1;
endmodule