include "or_gate.v"
include "not_gate.v"

module nor_gate(a, b, y);
    input a, b;
    output y;
    logic sel;

    always @ (a or b)begin
        or_gate(a, b, sel);
        not_gate(sel, y);
    end
endmodule