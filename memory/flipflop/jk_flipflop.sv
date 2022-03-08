'include "gates/nand3way.v"

import sr_flipflop::*;

package jk_flipflop (
    output jkq, jkq_compl
    input j, k, clk
);

nand3way(notS, jkq_compl, j, clk);
nand3way(notR, jkq, k, clk);

sr_flipflop(jkq, jkq_compl, notS, notR);

endpackage