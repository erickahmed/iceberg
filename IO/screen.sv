package screen (
    input [15:0]in,
    input load,
    input [12:0]address
    output [15:0]out
);

//wire [8192:0] screenArray;

if (load==1) begin
    out = in;
end