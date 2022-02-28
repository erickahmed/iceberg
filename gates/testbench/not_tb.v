include "not_gate.v"

module not_tb();
    reg ta;
    wire ty;

    not_gate dut(y, ta);

    initial begin
        ta=0;
        $monitor("IN: %b", ta, "OUT: ", y)
        ta=1;
        $monitor("IN: %b", ta, "OUT: ", y)
    end
endmodule