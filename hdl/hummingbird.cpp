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
    int nextinput = 0;
    bool inputpending = false;

    if (argc > 1) {
        std::ifstream file(argv[1]);
        while (!file.eof()) {
            int x;
            file >> std::hex >> x;
            input_stream.push_back(x);
        }
    }
    auto it = input_stream.begin();

    top->rst_btn_b = 0;
    top->eval();
    top->clk = 1;
    top->eval();
    top->clk = 0;
    top->rst_btn_b = 1;
    top->eval();

    int hlt = false;
    int bootloader_done = false;

    int cycles = 1;
    int oldpc = -1;
    while (1) {
        int phase, pc, control_signals, a_reg, instruction;
        int oprnd, alu, ramaddress, rammod;
        int ram_word, alumode;
        int out0, out1;

        // toggle clock
        top->dev0_i = bootloader_done ? nextinput : 0;
        top->clk = 1;
        top->eval();
        top->clk = 0;
        top->eval();

        bootloader_done = top->test_bl_done;
        if (bootloader_done) {
            phase = top->test_phase;
            bootloader_done = top->test_bl_done;
            pc = top->test_pc;
            control_signals = top->test_ctrl_sig;
            alu = top->test_alu_o;
            oprnd = top->test_oprnd_rd;
            ram_word = top->test_databus;
            a_reg = top->test_a_reg_rd;
            instruction = top->test_inst;
            ramaddress = top->test_io_address;
            alumode = top->test_alumode;
            out0 = top->test_dev0_data_o;
            out1 = top->test_dev1_data_o;
            if (out1 == 8 and inputpending == false) {
                nextinput = it != input_stream.end() ? *it++ : 0;
                inputpending = true;
            }
            if (out1 == 0) {
                inputpending = false;
            }
            if (phase == 0) {
                if (oldpc == pc) {
                    break;
                }
                oldpc = pc;
            }
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
                " alumode " << std::setw(2) << alumode <<
                " memwr   " << std::setw(2) <<
                ((control_signals >> 3) & 0x1) <<
                ((control_signals >> 4) & 0x1) <<
                " output0 " << std::setw(4) << out0 <<
                " output1 " << std::setw(4) << out1 <<
                " input   " << std::setw(4) << nextinput <<
                std::endl;
        }

        cycles ++;
    }

    delete top;
}
