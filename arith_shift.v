`timescale 1ns/1ns
`include "left_shift_arithmtic_circuit_module.v"

module arith_shifter_test;

reg [3:0] A;

wire [3:0] X;

integer i;
left_shift_arithmtic_circuit_module uut (A, X);

initial begin

    $dumpfile ("arith_shifter_test.vcd");// holds output waveform
    $dumpvars (0, arith_shifter_test);

    
    i = 0;
    while (i < 16) begin
        A = i;      // Assign A to the binary value of i
        #10;        // Wait 10 time units
        i = i + 1;  // Increment i
    end
 

    /*
    A = 0000;
    #10;

    A = 0001;
    #10;

    A = 0010;
    #10;

    A = 0011;
    #10;

    A = 0100;
    #10;

    A = 0101;
    #10;

    A = 0110;
    #10;

    A = 0111;
    #10;

    A = 1000;
    #10;

    A = 1001;
    #10;

    A = 1010;
    #10;

    A = 1011;
    #10;

    A = 1100;
    #10;

    A = 1101;
    #10;

    A = 1110;
    #10;

    A = 1111;
    #10;
    */

    $display (" Testing arithmetic shifter (shifting left by 1) ");

end

endmodule