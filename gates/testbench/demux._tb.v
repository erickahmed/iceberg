module demux_tb();
    reg a,b, sel;
    output y;
    demux dut(y, z, a, sel);
        initial begin
            a = 0; sel = 0;
            $monitor("IN: %b ",a, "SEL: ",sel, " OUT: a: %b, b: %b", y, z);
            #5;
            a = 1;sel = 0;
            $monitor("IN: %b ",a, "SEL: ",sel, " OUT: a: %b, b: %b", y, z);
            #5;
            a = 0; sel = 1;
            $monitor("IN: %b ",a, "SEL: ",sel, " OUT: a: %b, b: %b", y, z);
            #5;
            a = 1; sel = 1;
            $monitor("IN: %b ",a, "SEL: ",sel, " OUT: a: %b, b: %b", y, z);
        end
endmodule