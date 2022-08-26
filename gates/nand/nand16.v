module nand16(y16, a16, b16);
    input [15:0]a16;
    input [15:0]b16;
    output [15:0]y16;

    nand(y16[0], a16[0], b16[0]);
    nand(y16[1], a16[1], b16[1]);
    nand(y16[2], a16[2], b16[2]);
    nand(y16[3], a16[3], b16[3]);
    nand(y16[4], a16[4], b16[4]);
    nand(y16[5], a16[5], b16[5]);
    nand(y16[6], a16[6], b16[6]);
    nand(y16[7], a16[7], b16[7]);
    nand(y16[8], a16[8], b16[8]);
    nand(y16[9], a16[9], b16[9]);
    nand(y16[10], a16[10], b16[10]);
    nand(y16[11], a16[11], b16[11]);
    nand(y16[12], a16[12], b16[12]);
    nand(y16[13], a16[13], b16[13]);
    nand(y16[14], a16[14], b16[14]);
    nand(y16[15], a16[15], b16[15]);
endmodule