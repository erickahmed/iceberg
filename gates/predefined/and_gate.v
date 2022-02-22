module and_gate(a, b, y);
    input a, b;
    output y;

    always @ (a or b)begin
        if(a==1'b1 and b==1'b1)begin
            y=1'b1;
        end
        else
            y=0'b0;
    end
endmodule