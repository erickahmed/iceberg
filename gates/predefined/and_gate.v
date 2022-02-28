module and_gate(y, a, b);
    input a, b;
    output y;

    always @ (a or b)begin
        if(a==1'b1 & b==1'b1)begin
            y=1'b1;
        end
        else
            y=1'b0;
    end
endmodule