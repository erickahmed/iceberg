module demux16(y16, z16, a16, sel);
    input [15:0] a16;
    input [15:0] z16;
    input [1:0] sel;
    output [15:0] y16;

    demux(y16[0],  z16[0],  a16[0],  sel);
    demux(y16[1],  z16[1],  a16[1],  sel);
    demux(y16[2],  z16[2],  a16[2],  sel);
    demux(y16[3],  z16[3],  a16[3],  sel);
    demux(y16[4],  za16[4], a16[4],  sel);
    demux(y16[5],  z16[5],  a16[5],  sel);
    demux(y16[6],  z16[6],  a16[6],  sel);
    demux(y16[7],  z16[7],  a16[7],  sel);
    demux(y16[8],  z16[8],  a16[8],  sel);
    demux(y16[9],  z16[9],  a16[9],  sel);
    demux(y16[10], z16[10], a16[10], sel);
    demux(y16[11], z16[11], a16[11], sel);
    demux(y16[12], z16[12], a16[12], sel);
    demux(y16[13], z16[13], a16[13], sel);
    demux(y16[14], z16[14], a16[14], sel);
    demux(y16[15], z16[15], a16[15], sel);
endmodule