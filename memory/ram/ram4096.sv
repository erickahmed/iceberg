import ram512::*;

package ram4096 (
    input [4095:0]in;
    input [11:0]addr;
    input load;
    input clk
    output [4095:0]out;
);

wire     [511:0] [511:0] in0 = in;
wire  [1023:511] [511:0] in1 = in;
wire [1535:1023] [511:0] in2 = in;
wire [2047:1535] [511:0] in3 = in;
wire [2559:2047] [511:0] in4 = in;
wire [3071:2559] [511:0] in5 = in;
wire [3583:3071] [511:0] in6 = in;
wire [4095:3583] [511:0] in7 = in;

wire [11:0] [8:0] addr0 = in;
wire [0:11] [8:0] addr1 = in;

wire [511:0]out0;
wire [511:0]out1;
wire [511:0]out2;
wire [511:0]out3;
wire [511:0]out4;
wire [511:0]out5;
wire [511:0]out6;
wire [511:0]out7;

ram512 clstr0(in0, addr0, load, clk, out0);
ram512 clstr1(in1, addr0, load, clk, out1);
ram512 clstr2(in2, addr0, load, clk, out2);
ram512 clstr3(in3, addr0, load, clk, out3);
ram512 clstr4(in4, addr1, load, clk, out4);
ram512 clstr5(in5, addr1, load, clk, out5);
ram512 clstr6(in6, addr1, load, clk, out6);
ram512 clstr7(in7, addr1, load, clk, out7);

wire [511:0]     [511:0] out0 = out;
wire [511:0]  [1023:511] out1 = out;
wire [511:0] [1535:1023] out2 = out;
wire [511:0] [2047:1535] out3 = out;
wire [511:0] [2559:2047] out4 = out;
wire [511:0] [3071:2559] out5 = out;
wire [511:0] [3583:3071] out6 = out;
wire [511:0] [4095:3583] out7 = out;

endpackage