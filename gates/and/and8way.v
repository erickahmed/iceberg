module and8way(out, i0, i1, i2, i3, i4, i5, i6, i7);
    input i0, i1, i2, i3, i4, i5, i6, i7;
    output out;
    wire tmp01, tmp23, tmp45, tmp67, tmp0123, tmp4567;

    and andA(tmp01, i0, i1);
    and andB(tmp23, i2, i3);
    and andC(tmp45, i4, i5);
    and andD(tmp67, i6, i7);

    and andAB(tmp0123, tmp01, tmp23);
    and andCD(tmp4567, tmp45, tmp67);

    and andFinal(out, tmp0123, tmp4567);
endmodule