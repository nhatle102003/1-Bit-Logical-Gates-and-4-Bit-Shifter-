`timescale 1ns/1ns
`include "xorgate_module.v"

module xorgate_test;

reg A;

reg B;

wire X;

xorgate_module  uut (A, B, X);

initial begin

    $dumpfile ("xorgate_test.vcd");// holds output waveform
    $dumpvars (0, xorgate_test);

    A = 0;
    B = 0;
    #10;

    A = 0;
    B = 1;
    #10;

    A = 1;
    B = 0;
    #10;

    A = 1;
    B = 1;
    #10;

    $display (" Testing xor ");

end

endmodule