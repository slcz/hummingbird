#include <iostream>
#include <iomanip>
#include <cstdio>
#include <stdlib.h>
#include <vector>
#include <cassert>
#include "Vhummingbird.h"
#include "verilated.h"

int main(int argc, char **argv)
{
    Verilated::commandArgs(argc, argv);
    auto top = new Vhummingbird;

    top->rst_bar = 0;
    top->eval();
    top->clk = 1;
    top->eval();
    top->clk = 0;
    top->rst_bar = 1;
    top->eval();

	bool hlt = false;
	bool nop = false;

	int cycles = 1;
	while (hlt == false) {
        int phase, bootloader_done, pc, control_signals, a_reg, instruction;
        int oprnd, alu, ramaddress, rammod;
        int ram_word, alumode;

        // toggle clock
        top->clk = 1;
        top->eval();
        top->clk = 0;
        top->eval();

		hlt = top->hlt_out;
		nop = top->nop_out;
		bootloader_done = top->bootloader_done_out;
		if (bootloader_done) {
            phase = top->phase_out;
            bootloader_done = top->bootloader_done_out;
            pc = top->pc_out;
            control_signals = top->control_signals_out;
            alu = top->alu_out;
            oprnd = top->oprnd_out;
            ram_word = top->ram_word_out;
            a_reg = top->a_register_rd_out;
            instruction = top->instruction_out;
            ramaddress = top->ram_address_out;
            rammod = top->rammod_out;
            alumode = top->alu_mode;
            std::cout <<
                std::hex <<
                " cycles  " << std::setw(4) << cycles <<
                " phase   " << phase <<
                " pc      " << std::setw(3) << pc <<
                " databus " << std::setw(2) << ram_word <<
                " ctrl    " << std::setw(4) << control_signals <<
                " a_reg   " << std::setw(2) << a_reg <<
                " inst    " << std::setw(2) << instruction <<
                " oprnd   " << std::setw(2) << oprnd <<
                " alu     " << std::setw(2) << alu <<
                " ramaddr " << std::setw(5) << ramaddress <<
                " rammod  " << rammod <<
                " alumode " << std::setw(2) << alumode <<
                std::endl;
        }

        cycles ++;
    }

	delete top;
}
