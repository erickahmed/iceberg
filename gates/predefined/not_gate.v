module not_gate(a, y);
    input a;
    output y;

    always @ (a)begin
        if(a==1'b1)begin
            y=0'b0;
        end
        else
            y=1'b1;
    end
endmodule