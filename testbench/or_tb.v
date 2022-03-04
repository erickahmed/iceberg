'include "predefined/or_gate.v"

module or_tb();
    reg ta, tb;
    wire ty;

    or_gate dut(y, ta, tb);

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