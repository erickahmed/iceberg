include "and_gate.v"
include "nor_gate.v"
include "not_gate.v"

module xnor_gate(a, b, y);
    input a, b;
    output y;
    logic selA, selB, tmpNorA, tmpNorB;

    always @ (a or b)begin
        not_gate(a, selA);
        not_gate(b, selB);
        and_gate(a, selB, tmpNorA)
        and_gate(selA, b, tmpNorB)
        nor_gate(tmpNorA, tmpNorB, y)
    end
endmodule