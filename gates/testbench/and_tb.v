include "predefined/and_gate.v"

module and_tb();
    reg ta,tb;
    wire ty;
    and_gate dut(y, ta, tb);
        initial begin
            ta = 0; tb = 0;
            $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
        #5  ta = 1; tb = 0;
            $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
        #5  ta = 0; tb = 1;
            $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
        #5  ta = 1; tb = 1;
            $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
        end
endmodule