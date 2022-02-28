include "or_gate.v"
include "not_gate.v"

module nor_gate(y, a, b);
    input a, b;
    output y;
    wire sel;

    or_gate(a, b, sel);
    not_gate(sel, y);
endmodule