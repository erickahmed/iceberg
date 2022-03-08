'include "gates/nand3way16.v"

import sr_flipflop::*;

package d_flipflop (
    output [15:0]dq, [15:0]dq_compl
    input [15:0]d, clk,
);

nand16(tmp0, d, clk);
nand16(tmp1, clk, tmp0);

sr_flipflop(dq, dq_compl, tmp0, tmp1);

endpackage