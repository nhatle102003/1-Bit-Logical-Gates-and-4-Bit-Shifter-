`timescale 1ns/1ns
`include "nandgate_module.v"

module nandgate_test;

reg A, B;

wire X;

nandgate_module  uut (A, B, X);

initial begin

    $dumpfile ("nandgate_test.vcd");// holds output waveform
    $dumpvars (0, nandgate_test);

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

    $display (" Testing nand ");

end

endmodule