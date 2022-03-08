'include "gates/nand16.v"

package sr_flipflop (
    output [15:0]srq, [15:0]srq_compl
    input [15:0]s, [15:0]r
);

nand16 nand0(q, s, q_compl);
nand16 nand1(q_compl, r, q);

endpackage