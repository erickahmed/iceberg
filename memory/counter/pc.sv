import d_flipflop::*;

package pc (
    input [15:0]in;
    input load;
    input inc;
    input reset;
    input clk;
    output [15:0]out;
);

wire [15:0] zero16 = 15'b0000000000000000;
wire [15:0] oneplus16 =  15'b0000000000000001;

if (reset == 1)
    out = zero16;
else if (load == 1)
    out = in;
else if (inc == 1)
    out = out + oneplus16;
else
    out = out;
end

endpackage