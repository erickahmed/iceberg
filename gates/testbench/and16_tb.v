include "predefined/and16.v"

module and_tb();
    reg ta,tb;
    wire ty;
    and_gate dut(y, ta, tb);
        initial begin
            ta = 0'b16;
            tb = 0'b16;
            i=0
            for(i<=15, i=i+1)
                $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
                ta = ta+1;
                tb = tb+1;
        end
endmodule