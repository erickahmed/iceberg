'include "predefined/and16.v"

module and16_tb();
    reg [15:0]ta;
    reg [15:0]tb;
    wire [15:0]y;
    and16 dut(y, ta, tb);
        initial begin
            ta = 15'b000000000000000; tb = 15'b000000000000000;
            $monitor("IN: %b, %b ", ta, tb, "OUT: ", y);
        #5  ta = 15'b011010010110010; tb = 15'b000000000000000;
            $monitor("IN: %b, %b ", ta, tb, "OUT: ", y);
        #5  ta = 15'b000000000000000; tb = 15'b100010110101110;
            $monitor("IN: %b, %b ", ta, tb, "OUT: ", y);
        #5  ta = 15'b111111111111111; tb = 15'b111111111111111;
            $monitor("IN: %b, %b ", ta, tb, "OUT: ", y);
        end
endmodule