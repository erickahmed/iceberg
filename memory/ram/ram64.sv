import ram8::*;

package ram64 (
    input [63:0]in;
    input [5:0]addr;
    input load;
    input clk
    output [63:0]out;
);

wire   [7:0] [63:0] in0 = in;
wire  [15:8] [63:0] in1 = in;
wire [24:15] [63:0] in2 = in;
wire [31:24] [63:0] in3 = in;
wire [39:31] [63:0] in4 = in;
wire [47:39] [63:0] in5 = in;
wire [55:47] [63:0] in6 = in;
wire [63:55] [63:0] in7 = in;

wire [5:0] [2:0] addr0 = in;
wire [0:5] [2:0] addr1 = in;

wire [7:0]out0;
wire [7:0]out1;
wire [7:0]out2;
wire [7:0]out3;
wire [7:0]out4;
wire [7:0]out5;
wire [7:0]out6;
wire [7:0]out7;

ram8 clstr0(in0, addr0, load, clk, out0);
ram8 clstr1(in1, addr0, load, clk, out1);
ram8 clstr2(in2, addr0, load, clk, out2);
ram8 clstr3(in3, addr0, load, clk, out3);
ram8 clstr4(in4, addr1, load, clk, out4);
ram8 clstr5(in5, addr1, load, clk, out5);
ram8 clstr6(in6, addr1, load, clk, out6);
ram8 clstr7(in7, addr1, load, clk, out7);

wire [7:0]   [7:0] out0 = out;
wire [7:0]  [15:8] out1 = out;
wire [7:0] [24:15] out2 = out;
wire [7:0] [31:24] out3 = out;
wire [7:0] [39:31] out4 = out;
wire [7:0] [47:39] out5 = out;
wire [7:0] [55:47] out6 = out;
wire [7:0] [63:55] out7 = out;

endpackage