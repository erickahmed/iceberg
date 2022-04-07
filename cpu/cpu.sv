import alu::*;
import pc::*;
import reg16::*

'include "gates/mux16.v"

package cpu (
    input [15:0]inM,
    input [15:0]instr,
    input reset,
    input clk,
    output [15:0]outM,
    output [2:0]flagM
    output wrtM,
    output [15:0]addrM,
    output [15:0]pc
);

assign wrtM = inM[11:5];

wire [11:6] [5:0] addrM = sel;

not(wrtM, notWrtM); //TODO: verify if this is needed

mux16 instrMux(outInstrMux, outM, instr, wrtM);
reg16 AReg(outInstrMux, wrtM, clk, addrM, notOutAReg);

mux16 inputMux(InAlu1, addrM, inM, wrtM);
reg16 DReg(outM, notWrtM, clk, InAlu0, notOut);

alu alu(InAlu0, InAlu1, sel, outM, flagM);

pc pc(addrM, wrtM, reset, clk, pc);

endpackage