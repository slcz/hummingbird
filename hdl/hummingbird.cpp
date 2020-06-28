#include <iostream>
#include <iomanip>
#include <cstdio>
#include <stdlib.h>
#include <vector>
#include <cassert>
#include <fstream>
#include "Vhummingbird.h"
#include "verilated.h"

int main(int argc, char **argv)
{
    Verilated::commandArgs(argc, argv);
    auto top = new Vhummingbird;
    std::vector<int> input_stream;

    if (argc > 1) {
        std::ifstream file(argv[1]);
        while (!file.eof()) {
            int x;
            file >> std::hex >> x;
            input_stream.push_back(x);
        }
    }
    auto it = input_stream.begin();

    top->rst_pb_bar = 0;
    top->eval();
    top->clk = 1;
    top->eval();
    top->clk = 0;
    top->rst_pb_bar = 1;
    top->eval();

	bool hlt = false;
	bool nop = false;
    bool bootloader_done = false;

	int cycles = 1;
	while (hlt == false) {
        int phase, pc, control_signals, a_reg, instruction;
        int oprnd, alu, ramaddress, rammod;
        int ram_word, alumode;
        int out0, out1, out2;

        // toggle clock
        top->in_idev0 = bootloader_done && it != input_stream.end() ? *it++ : 0;
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
            ramaddress = top->io_address_out;
            rammod = top->rammod_out;
            alumode = top->alu_mode;
            out0 = top->out_odev0;
            out1 = top->out_odev1;
            out2 = top->out_odev2;
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
                " output0 " << std::setw(4) << out0 <<
                " output1 " << std::setw(4) << out1 <<
                " output2 " << std::setw(4) << out2 <<
                std::endl;
        }

        cycles ++;
    }

	delete top;
}
