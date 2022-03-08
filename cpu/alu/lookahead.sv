package lookahead (
    output [15:0]carry_bit,
    input [15:0]a,
    input [15:0]b,
);

res = and16(y, a, b);

for (i=0; i<15 ; i=i+1)
    if (res[i] = 0)
        carry_bit[i] = 0;
    else
        carry_bit[i] = 1;
    end
end

endpackage