# Square One - From logic gates to 16-bit OS
Square One is a virtual computer built from scratch, starting from the logic gates and CPU to an assembler and compiler, whilst at the very high level Java is implemented-

## Architecture

### Logic Gates (path: /gates)
Logic gates are the lowest level point from which this project is implemented. They are written in Verilog and then simulated using iverilog on a dedicated testbench, and any FPGA simulator will actually work. See Resources for an online 16-bit FPGA simulator.
Most of the gates also have a 16-bit version and eventually a n-way version (some even n-way-16-bit).

Ex: a 4-way mux gate:

'''
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
'''

#### Predefined gates (path: /gates/predefined)
The predefined gates are by default implemented on Verilog/Systemverilog. Thus they are not strictly needed for building more advanced gates or chipset, but I still decided to add them as reference and learning purposes.

#### Testbenches (path: /testbenches)
Testbenches are a way to test the implementation of a particular gate using a Verilog compiler. They output a set of I/O command to test the correct implementation of a given gate.

### Arithmetic Logic Unit (path: /alu)
The ALU is written is Systemverilog (such as the CPU and other complex components). It handles two 16-bit inputs, a 6-bit opcode and a 16-bit output and a 2-bit sign flag. It computes the following instructions:

    x+y
    x-y
    y-x
    0
    1
    -1
    x
    y
    -x
    -y
    !x
    !y
    x+1
    y+1
    x-1
    y-1
    x&y
    x|y

The 6-bit opcode gets divided in single bits and refered to as:
    za
    na
    zb
    nb
    f
    no

The ALU logic manipulates the a and b inputs and operates on the resulting values, and in the exact order as it follows, thus permitting to make all of the 16 operations described before:

* if (za == 1) set x = 0            16-bit constant
* if (na == 1) set x = !x           bitwise not
* if (zb == 1) set y = 0            16-bit constant
* if (nb == 1) set y = !y           bitwise not
* if (f == 1)  set out = x + y      integer 2's complement addition
* if (f == 0)  set out = x & y      bitwise and
* if (no == 1) set out = !out       bitwise not

And the 2-bit sign flag is:
    0 (if output < 0)
    1 (if output = 0)
    2 (if output > 0)

## Usage
#### Verilog/Systemverilog logic gates
To run any Verilog (.v) or Systemverilog (.sv) file, use *iverilog* (available for Windows, Linux and MacOS) using the command:
    >> iverilog filename.v

To visually see the functioning of a gate and it's testbench you need to use *gtkwave* and have a .vcd file of the gate (plus eventually the testbench, in the same file):
    >> gtkwave filename.vcd

## Resources
- Online Verilog Compiler:  https://www.tutorialspoint.com/compile_verilog_online.php
- Online FPGA Simulator:    https://simulator.nirajmmenon.com/