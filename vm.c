/* Main file to use to run Iceberg Virtual Computer*/

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

#include "assembler/assembler.c"
#include "compiler/compiler.c"


// Logic gates Verilog files
char gates[][32] =  {"gates/and8way.v",
                    "and8way16.v"
                    "and16.v"
                    //etc.
                    };
// Memory Systemverilog files
char memory[]  =   "memory/counter/pc.sv";
// CPU Systemverilog files: remember to load from less important to most important
char cpu[][32]  =   {"cpu/alu/alu.sv",
                    "cpu/alu/adder.sv",
                    "cpu/alu/adder16.sv",
                    "cpu/alu/halfadder.sv",
                    "cpu/alu/lookahead.sv"
                    "cpu/cpu.sv"
                    };

//FIXME:: can read folder and output every file name? then choose what to run??
//TODO: read all files and choose what file execute
char input[][32] =  {"asm/mult.asm",
                    "asm/example.asm"
                    }

void import_sv(char *filename) {    //TODO: verify if it can keep multiple files in memory
    FILE *stream = fopen(filename, "r"); //or fscanf or fgetc ?
}

void close_stream(char filename) {
    int fclose(filename);
}

int main(int argc, int *argv) {
    bool load = FALSE;
    bool quit = FALSE;

    // startup and load->TRUE

    // Load *.sv subsystem files
    if (load == TRUE) {
        // Load logic gates
            // check sizeof() usage: i need elements in array
        for(int i=0; i< sizeof(gates[]), i++) {
            import_sv(gates[i]); }
        // Load memory
        for(int i=0; i< sizeof(memory[]), i++) {
            import_sv(memory[i]); }
        // Load CPU
        for(int i=0; i< sizeof(cpu[]), i++) {
            import_sv(cpu[i]); }
        }

    //TODO: NEXT STUFF TO DO
    // read files, create a general logic to read *.sv, start cpu and use any other chip as needed,
    // included in a file, like a tree of inclusions(?)

    // user choose high level language program, compiler compiles (duh) to maachine code;
    // assembly assembles (double-duh) the program, we read assembled program (binary opcodes) which inputs are feed
    // to the rom, which will send to the cpu

    // maybe also load os-like assembled program, that allocates stuff or do useful things before running programs?


    if(quit == TRUE) {
        load = FALSE;

        //TODO: add message or something
        //TODO: use sizeof()
        for(int i=5; i<0, i--) {
            close_stream(cpu[i]); }
        for(int i=n; i<0, i--) {
            close_stream(memory[i]); }
        for(int i=m; i<0, i--) {
            close_stream(gates[i]); }

        return 0;
    }
}
