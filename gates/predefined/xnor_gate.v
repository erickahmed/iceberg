include "and_gate.v"
include "xnor_gate.v"
include "not_gate.v"

module xnor_gate(a, b, y);
    input a, b;
    output y;
    logic selA, selB, tmpXnorA, tmpXnorB;

    always @ (a or b)begin
        not_gate(a, selA);
        not_gate(b, selB);
        and_gate(a, selB, tmpXnorA)
        and_gate(selA, b, tmpXnorB)
        xnor_gate(tmpXnorA, tmpXnorB, y)
    end
endmodule