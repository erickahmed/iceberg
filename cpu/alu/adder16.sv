import adder::*;

package adder16 (
    output [15:0]sum16,
    output [15:0]carry16,
    input [15:0]a16,
    input [15:0]b16,
    wire [15:0]c
);

adder(sum16[0], carry16[0], a16[0], b16[0], c[0]=0);
adder(sum16[1], carry16[1], a16[1], b16[1], c[1]);
adder(sum16[2], carry16[2], a16[2], b16[2], c[2]);
adder(sum16[3], carry16[3], a16[3], b16[3], c[3]);
adder(sum16[4], carry16[4], a16[4], b16[4], c[4]);
adder(sum16[5], carry16[5], a16[5], b16[5], c[5]);
adder(sum16[6], carry16[6], a16[6], b16[6], c[6]);
adder(sum16[7], carry16[7], a16[7], b16[7], c[7]);
adder(sum16[8], carry16[8], a16[8], b16[8], c[8]);
adder(sum16[9], carry16[9], a16[9], b16[9], c[9]);
adder(sum16[10], carry16[10], a16[10], b16[10], c[10]);
adder(sum16[11], carry16[11], a16[11], b16[11], c[11]);
adder(sum16[12], carry16[12], a16[12], b16[12], c[12]);
adder(sum16[13], carry16[13], a16[13], b16[13], c[13]);
adder(sum16[14], carry16[14], a16[14], b16[14], c[14]);
adder(sum16[15], carry16[15], a16[15], b16[15], c[15]);

endpackage