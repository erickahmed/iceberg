module and8way(out, i0, i1, i2, i3, i4, i5, i6, i7);
    input i0, i1, i2, i3, i4, i5, i6, i7;
    output out;
    wire tmp01, tmp23, tmp45, tmp67, tmp0123, tmp4567;

    and(tmp01, i0, i1);
    and(tmp23, i2, i3);
    and(tmp45, i4, i5);
    and(tmp67, i6, i17);

    and(tmp0123, tmp01, tmp23);
    and(tmp4567, tmp45, tmp67);

    and(out, tmp0123, tmp4567);
endmodule