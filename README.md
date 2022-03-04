# Square One - From logic gates to 16-bit OS
Square One is a virtual computer built from scratch, starting from the logic gates and CPU to an assembler and compiler, whilst at the very high level Java is implemented-

## Architecture

### Logic Gates (path: /gates)
Logic gates are the lowest level point from which this project is implemented. They are written in Verilog and then simulated using iverilog on a dedicated testbench, and any FPGA simulator will actually work. See Resources for an online 16-bit FPGA simulator.
Most of the gates also have a 16-bit version and eventually a n-way version (some even n-way-16-bit).

Ex: a 4-way mux gate:

    module mux4way(out, i0, i1, i2, i3, sel0, sel1);
        input i0, i1, i2, i3;
        input [3:0]sel;
        output [3:0]out;
        wire tmp0, tmp1, tmp2, tmp3;

        wire [3:0] [1:0] sel0 = sel;
        wire [0:3] [1:0] sel1 = sel;

        not(notSel0, sel0);
        not(notSel1, sel1);

        and(tmp0, i0, notSel0);
        and(tmp1, i1, sel0);
        and(tmp2, i2, notSel1);
        and(tmp3, i3, sel1);

        or4way(out, tmp0, tmp1, tmp2, tmp3);

    endmodule

#### Predefined gates (path: /gates/predefined)
The predefined gates are by default implemented on Verilog/Systemverilog. Thus they are not strictly needed for building more advanced gates or chipset, but I still decided to add them as reference and learning purposes.

#### Testbenches (path: /testbenches)
Testbenches are a way to test the implementation of a particular gate using a Verilog compiler

Ex: testbench for a xor gate:

    module xor_tb();
        reg ta, tb;
        wire ty;

        xor_gate dut(y, ta, tb);

        initial begin
            ta=0, tb=0;
            $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
            ta=0, tb=1;
            $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
            ta=1, tb=0;
            $monitor("IN: %b, %b ",ta, tb, "OUT: ",y);
            ta=1, tb=1;
        end
    endmodule

### Arithmetic Logic Unit (path: /alu)
The ALU is written is Systemverilog (such as the CPU and other complex components). It handles 16-bit values and performs numerous operations, as:



## Usage

## Resources
- Online Verilog Compiler:  https://www.tutorialspoint.com/compile_verilog_online.php
- Online FPGA Simulator:    https://simulator.nirajmmenon.com/