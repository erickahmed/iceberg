'include "predefined/and16.v"

module and_tb();
    reg [15:0]ta, [15:0]tb;
    wire [15:0]y;
    and16 dut(y, ta, tb);
        initial begin
            
            $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
        end
endmodule