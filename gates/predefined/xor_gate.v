include "and_gate.v"
include "or_gate.v"
include "not_gate.v"

module xor_gate(y, a, b);
    input a, b;
    output y;
    wire selA, selB, tmpOrA, tmpOrB;

    not_gate(a, selA);
    not_gate(b, selB);
    and_gate(a, selB, tmpOrA);
    and_gate(selA, b, tmpOrB);
    or_gate(tmpOrA, tmpOrB, y);
endmodule