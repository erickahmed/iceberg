import ram4096::*;

package ram16384 (
    input [16384:0]in;
    input [13:0]addr;
    input load;
    input clk
    output [16384:0]out;
);

wire      [4095:0] [4095:0] in0 = in;
wire   [8191:4095] [4095:0] in1 = in;
wire  [12287:8191] [4095:0] in2 = in;
wire [16383:12287] [4095:0] in3 = in;

wire [13:0] [11:0] addr0 = in;
wire [0:13] [11:0] addr1 = in;

wire [4095:0]out0;
wire [4095:0]out1;
wire [4095:0]out2;
wire [4095:0]out3;

ram4096 clstr0(in0, addr0, load, clk, out0);
ram4096 clstr1(in1, addr0, load, clk, out1);
ram4096 clstr2(in2, addr0, load, clk, out2);
ram4096 clstr3(in3, addr0, load, clk, out3);

wire [4095:0]      [4095:0] out0 = out;
wire [4095:0]   [8191:4095] out1 = out;
wire [4095:0]  [12287:8191] out2 = out;
wire [4095:0] [16383:12287] out3 = out;

endpackage