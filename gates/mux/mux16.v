module mux16(y16, a16, b16, sel);
    input [15:0] a16;
    input[15:0] b16;
    input sel;
    output [15:0] y16;

    mux(y16[0],  a16[0],  b16[0],  sel);
    mux(y16[1],  a16[1],  b16[1],  sel);
    mux(y16[2],  a16[2],  b16[2],  sel);
    mux(y16[3],  a16[3],  b16[3],  sel);
    mux(y16[4],  a16[4],  b16[4],  sel);
    mux(y16[5],  a16[5],  b16[5],  sel);
    mux(y16[6],  a16[6],  b16[6],  sel);
    mux(y16[7],  a16[7],  b16[7],  sel);
    mux(y16[8],  a16[8],  b16[8],  sel);
    mux(y16[9],  a16[9],  b16[9],  sel);
    mux(y16[10], a16[10], b16[10], sel);
    mux(y16[11], a16[11], b16[11], sel);
    mux(y16[12], a16[12], b16[12], sel);
    mux(y16[13], a16[13], b16[13], sel);
    mux(y16[14], a16[14], b16[14], sel);
    mux(y16[15], a16[15], b16[15], sel);
endmodule