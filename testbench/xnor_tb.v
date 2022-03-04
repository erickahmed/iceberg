'include "predefined/xnor_gate.v"

module xnor_tb();
    reg ta, tb;
    wire ty;

    xnor_gate dut(y, ta, tb);

    initial begin
        ta=0, tb=0;
        $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
        ta=0, tb=1;
        $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
        ta=1, tb=0;
        $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
        ta=1, tb=1;
    end
endmodule