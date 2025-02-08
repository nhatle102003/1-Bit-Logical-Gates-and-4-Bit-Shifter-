`timescale 1ns/1ns
`include "norgate_module.v"

module norgate_test;

reg A, B;

wire X;

norgate_module  uut (A, B, X);

initial begin

    $dumpfile ("norgate_test.vcd");// holds output waveform
    $dumpvars (0, norgate_test);

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

    $display (" Testing nor ");

end

endmodule