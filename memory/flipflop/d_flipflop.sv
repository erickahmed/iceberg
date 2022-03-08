import sr_flipflop::*;

package d_flipflop (
    output dq, dq_compl
    input d, clk,
);

nand(tmp0, d, clk);
nand(tmp1, clk, tmp0);

sr_flipflop(dq, dq_compl, tmp0, tmp1);

endpackage