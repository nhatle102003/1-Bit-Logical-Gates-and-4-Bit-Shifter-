module xorgate_module (A, B, X); 
    input A, B;
    
    output X;

    assign X = A ^ B;

endmodule