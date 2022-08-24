module mux(y, a, b, sel);
    input a, b, sel;
    output y;
    wire notSel, andA, andB;

    not(notSel, sel);
    and(andA, a, sel);
    and(andB, b, notSel);
    or(y, andA, andB);
endmodule