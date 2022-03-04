'include "predefined/mux.v"

module mux_tb();
    reg a,b, sel;
    output y;
    mux dut(a, b, sel, y);
        initial begin
            a = 0; b = 0; sel = 0;
            $monitor("IN: %b, %b ",a, b, "SEL: ",sel, " OUT: ",y);
            #5;
            a = 1; b = 0; sel = 0;
            $monitor("IN: %b, %b ",a, b, "SEL: ",sel, " OUT: ",y);
            #5;
            a = 0; b = 1; sel = 0;
            $monitor("IN: %b, %b ",a, b, "SEL: ",sel, " OUT: ",y);
            #5;
            a = 1; b = 1; sel = 0;
            $monitor("IN: %b, %b ",a, b, "SEL: ",sel, " OUT: ",y);
            #5;
            a = 0; b = 0; sel = 1;
            $monitor("IN: %b, %b ",a, b, "SEL: ",sel, " OUT: ",y);
            #5;
            a = 1; b = 0; sel = 1;
            $monitor("IN: %b, %b ",a, b, "SEL: ",sel, " OUT: ",y);
            #5;
            a = 0; b = 1; sel = 1;
            $monitor("IN: %b, %b ",a, b, "SEL: ",sel, " OUT: ",y);
            #5;
            a = 1; b = 1; sel = 1;
            $monitor("IN: %b, %b ",a, b, "SEL: ",sel, " OUT: ",y);
        end
endmodule