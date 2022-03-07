'include "gates/nand16.v"

module sr_flipflop (
    input s, r, clk,
    output q, q_compl
);

nand16 nand0(tmp0, s, clk);
nand16 nand1(tmp1, r, clk);
nand16 nand2(q, tmp0, q_compl);
nand16 nand3(q_compl, tmp1, q);

endmodule