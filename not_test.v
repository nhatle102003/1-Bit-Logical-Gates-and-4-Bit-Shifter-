`timescale 1ns/1ns
`include "notgate_module.v"

module notgate_test;

reg A;

wire X;

notgate_module  uut (A, X);

initial begin

    $dumpfile ("notgate_test.vcd");// holds output waveform
    $dumpvars (0, notgate_test);

    A = 0;
    #10;

    A = 1;
    #10;

    $display (" Testing not ");

end

endmodule