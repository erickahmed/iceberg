'include "cpu/alu/adder.sv"

module adder16 (
    output [15:0]sum_bit,
    output [15:0]carry_bit
    input [15:0]a,
    input [15:0]b,
    input [15:0]c,
);

halfadder(tmpXor0, tmpAnd0, a, b)

xor sum_final(sum_bit, tmpXor0, c);

and carry_tmp0(tmpAnd1, tmpXor0, c);
or carry_final(carry_bit, tmpAnd0, tmpAnd1);

endmodule


