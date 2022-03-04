import halfadder::*;

package adder (
    output sum_bit,
    output carry_bit,
    input a,
    input b,
    input c
);

halfadder halfadd(tmpXor0, tmpAnd0, a, b);

xor sum_final(sum_bit, tmpXor0, c);

and carry_tmp0(tmpAnd1, tmpXor0, c);
or carry_final(carry_bit, tmpAnd0, tmpAnd1);

endpackage