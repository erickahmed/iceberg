include "and_gate.v"
include "or_gate.v"
include "not_gate.v"

module xnor_gate(y, a, b);
    input a, b;
    output y;
    wire selA, selB, tmpOrA, tmpOrB, tmpNot;

    not_gate(a, selA);
    not_gate(b, selB);
    and_gate(a, selB, tmpOrA);
    and_gate(selA, b, tmpOrB);
    or_gate(tmpOrA, tmpOrB, tmpNot);
    not_gate(tmpNot, y);
endmodule