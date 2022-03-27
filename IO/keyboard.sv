package keyboard (
    output [15:0]out
);

//TODO: attach the physical keyboard to the hdl keyboard using iverilog

case(out)
    1 :
        out = 15'b0000000000000001;
        break
    //TODO: create all keyboard cases
    default:
    0 :
        out = 15'b0000000000000000;
        break;
endcase