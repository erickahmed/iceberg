import d_flipflop::*;

package bit_reg (
    input in;
    input load;
    input clk;
    output out;
    output out_compl;
);

    mux(tmp, in, out, load);
    d_flipflop(out, out_compl, tmp, clk);

endpackage