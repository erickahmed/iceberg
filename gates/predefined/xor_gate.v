include "and_gate.v"
include "xor_gate.v"
include "not_gate.v"

module xnor_gate(a, b, y);
    input a, b;
    output y;
    logic selA, selB, tmpXorA, tmpXorB;

    always @ (a or b)begin
        not_gate(a, selA);
        not_gate(b, selB);
        and_gate(a, selB, tmpXnorA);
        and_gate(selA, b, tmpXnorB);
        xor_gate(tmpXorA, tmpXorB, y);
    end
endmodule