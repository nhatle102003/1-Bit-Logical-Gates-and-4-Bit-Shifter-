module notgate_module (A, X);

    input A;
    output X;

    assign X = ~A;

endmodule