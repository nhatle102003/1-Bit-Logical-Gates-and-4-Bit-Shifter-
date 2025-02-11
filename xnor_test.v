`timescale 1ns/1ns
`include "xnorgate_module.v"

module xnorgate_test;

reg A;

reg B;

wire X;

xnorgate_module  uut (A, B, X);

initial begin

    $dumpfile ("xnorgate_test.vcd");// holds output waveform
    $dumpvars (0, xnorgate_test);

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

    $display (" Testing xnor ");

end

endmodule