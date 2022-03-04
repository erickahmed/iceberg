package halfadder (
    output sum_bit,
    output carry_bit,
    input a,
    input b
);

xor sum_g(sum_bit, a, b);
and carry_g(carry_bit, a, b);

endpackage