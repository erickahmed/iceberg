'include "cpu/alu/halfadder.sv"

module halfadder_tb();
    reg ta,tb;
    wire t_sum, t_carry;
    halfadder dut(t_sum, t_carry, ta, tb);
        initial begin
            ta = 0; tb = 0;
            $monitor("A/B: %b, %b ",ta, tb, "S/C: %b, %b",t_sum, t_carry);
        #5  ta = 1; tb = 0;
            $monitor("A/B: %b, %b ",ta, tb, "S/C: %b, %b",t_sum, t_carry);
        #5  ta = 0; tb = 1;
            $monitor("A/B: %b, %b ",ta, tb, "S/C: %b, %b",t_sum, t_carry);
        #5  ta = 1; tb = 1;
            $monitor("A/B: %b, %b ",ta, tb, "S/C: %b, %b",t_sum, t_carry);
        end
endmodule