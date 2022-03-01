`default_nettype none

module or16(y16, a16, b16);
    input [15:0] a16;
    input [15:0] b16;
    output [15:0] y16;

    or(y16[0], a16[0], b16[0]);
    or(y16[1], a16[1], b16[1]);
    or(y16[2], a16[2], b16[2]);
    or(y16[3], a16[3], b16[3]);
    or(y16[4], a16[4], b16[4]);
    or(y16[5], a16[5], b16[5]);
    or(y16[6], a16[6], b16[6]);
    or(y16[7], a16[7], b16[7]);
    or(y16[8], a16[8], b16[8]);
    or(y16[9], a16[9], b16[9]);
    or(y16[10], a16[10], b16[10]);
    or(y16[11], a16[11], b16[11]);
    or(y16[12], a16[12], b16[12]);
    or(y16[13], a16[13], b16[13]);
    or(y16[14], a16[14], b16[14]);
    or(y16[15], a16[15], b16[15]);
endmodule