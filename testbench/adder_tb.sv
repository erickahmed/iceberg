'include "cpu/alu/adder.sv"

module adder_tb();
    reg ta,tb, tc;
    wire t_sum, t_carry;
    adder dut(t_sum, t_carry, ta, tb, tc);
        initial begin
            ta = 0; tb = 0; tc = 0;
            $monitor("A/B/C: %b, %b, %b ",ta, tb, tc, "S/C: %b, %b",t_sum, t_carry);
        #5  ta = 1; tb = 0; tc = 0;
            $monitor("A/B/C: %b, %b, %b ",ta, tb, tc, "S/C: %b, %b",t_sum, t_carry);
        #5  ta = 0; tb = 1; tc = 0;
            $monitor("A/B/C: %b, %b, %b ",ta, tb, tc, "S/C: %b, %b",t_sum, t_carry);
        #5  ta = 1; tb = 1; tc = 0;
            $monitor("A/B/C: %b, %b, %b ",ta, tb, tc, "S/C: %b, %b",t_sum, t_carry);
        #5  ta = 0; tb = 0; tc = 1;
            $monitor("A/B/C: %b, %b, %b ",ta, tb, tc, "S/C: %b, %b",t_sum, t_carry);
        #5  ta = 1; tb = 0; tc = 1;
            $monitor("A/B/C: %b, %b, %b ",ta, tb, tc, "S/C: %b, %b",t_sum, t_carry);
        #5  ta = 0; tb = 1; tc = 1;
            $monitor("A/B/C: %b, %b, %b ",ta, tb, tc, "S/C: %b, %b",t_sum, t_carry);
        #5  ta = 1; tb = 1; tc = 1;
            $monitor("A/B/C: %b, %b, %b ",ta, tb, tc, "S/C: %b, %b",t_sum, t_carry);
        end
endmodule