`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:08 05/01/2024 
// Design Name: 
// Module Name:    one_bit_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

/*
module one_bit_adder(
    input a, // First input bit
    input b, // Second input bit
    input cin, // Carry in
    output sum, // Sum output
    output cout // Carry out
);

assign sum = a ^ b ^ cin; // XOR operation for sum
assign cout = (a & b) | (a & cin) | (b & cin); // Carry out

endmodule
*/

module one_bit_adder(
    input a, // First input bit
    input b, // Second input bit
    input cin, // Carry in
    output sum, // Sum output
	 output sum_2, // Sum output (with trojan)
    output cout // Carry out
);

// Modify the sum output
assign sum = a ^ b ^ cin; // XOR operation for sum with trojan

// Leave the carry out unchanged
assign cout = (a & b) | (a & cin) | (b & cin); // Carry out

//Additional signals for higher testability
assign sum_2 = 2'b0;

endmodule
