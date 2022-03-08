package sr_flipflop (
    output srq, srq_compl
    input s, r
);

nand(q, s, q_compl);
nand(q_compl, r, q);

endpackage