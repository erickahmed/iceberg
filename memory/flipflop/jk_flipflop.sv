'include "gates/nand3way16.v"

import sr_flipflop::*;

package jk_flipflop (
    output [15:0]jkq, [15:0]jkq_compl
    input [15:0]j, [15:0]k, [15:0]clk   //FIXME: is 26bit clock correct? Like can it go only as 0000000000000000 and 1111111111111111?
);

nand3way16(notS, jkq_compl, j, clk);
nand3way16(notR, jkq, k, clk);

sr_flipflop(jkq, jkq_compl, notS, notR);

endpackage