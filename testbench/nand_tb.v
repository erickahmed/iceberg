'include "predefined/nand_gate.v"

module nand_tb();
    reg ta,tb;
    wire ty;
    nand_gate dut(y, ta, tb);
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