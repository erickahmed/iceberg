module and16(y16, a16, b16);
    input [15:0]a16;
    input [15:0]b16;
    output [15:0]y16;

    and and0(y16[0], a16[0], b16[0]);
    and and1(y16[1], a16[1], b16[1]);
    and and2(y16[2], a16[2], b16[2]);
    and and3(y16[3], a16[3], b16[3]);
    and and4(y16[4], a16[4], b16[4]);
    and and5(y16[5], a16[5], b16[5]);
    and and6(y16[6], a16[6], b16[6]);
    and and7(y16[7], a16[7], b16[7]);
    and and8(y16[8], a16[8], b16[8]);
    and and9(y16[9], a16[9], b16[9]);
    and and10(y16[10], a16[10], b16[10]);
    and and11(y16[11], a16[11], b16[11]);
    and and12(y16[12], a16[12], b16[12]);
    and and13(y16[13], a16[13], b16[13]);
    and and14(y16[14], a16[14], b16[14]);
    and and15(y16[15], a16[15], b16[15]);
endmodule