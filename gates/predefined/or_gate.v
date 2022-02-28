module or_gate(y, a, b);
    input a, b;
    output y;

    always @ (a or b)begin
        if(a==0'b0 & b==0'b0)begin
            y=0'b0;
        end
        else
            y=1'b1;
    end
endmodule