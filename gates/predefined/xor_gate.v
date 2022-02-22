include "and_gate.v"
include "or_gate.v"
include "not_gate.v"

module xnor_gate(a, b, y);
    input a, b;
    output y;
    logic selA, selB, tmpOrA, tmpOrB;

    always @ (a or b)begin
        not_gate(a, selA);
        not_gate(b, selB);
        and_gate(a, selB, tmpOrA);
        and_gate(selA, b, tmpOrB);
        or_gate(tmpOrA, tmpOrB, y);
    end
endmodule