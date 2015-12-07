# Create work library
vlib work

# Compile Verilog
#     All Verilog files that are part of this design should have
#     their own "vlog" line below.
vlog "./NegCLKD_FF.sv"
vlog "./NegCLKEnabledDFF.sv"
vlog "./regfile.sv"
vlog "./mux2_1.sv"
vlog "./enabledDecoder1_2.sv"
vlog "./enabledDecoder1_4.sv"
vlog "./enabledDecoder1_8.sv"
vlog "./enabledDecoder1_16.sv"
vlog "./enabledDecoder1_32.sv"
vlog "./Register.sv"
vlog "./D_FF.sv"
vlog "./Mux32_1.sv"
vlog "./Mux8_1.sv"
vlog "./Mux4_1.sv"
vlog "./EnabledDFF.sv"
vlog "./SingleMux2_1.sv"
vlog "./NOR32.sv"
vlog "./alu.sv"
vlog "./OneBitAdd.sv"
vlog "./Adding32.sv"
vlog "./Adder.sv"
vlog "./Subtractor.sv"
vlog "./SingleMux4_1.sv"
vlog "./dataMem.sv"
vlog "./InstructionMem.sv"
vlog "./Adder30Bit.sv"
vlog "./SignExtend32.sv"
vlog "./ProgramCounter.sv"
vlog "./InstructionFetchUnit.sv"
vlog "./Mux5Bit2_1.sv"
vlog "./Mux30Bit2_1.sv"
vlog "./DataPathControlLogic.sv"
vlog "./PipelineRegisters.sv"
vlog "./ForwardingUnit.sv"
vlog "./Pipelined_CPU.sv"

# Call vsim to invoke simulator
#     Make sure the last item on the line is the name of the
#     testbench module you want to execute.
vsim -voptargs="+acc" -t 1ps -lib work Pipelined_CPU_testbench

# Source the wave do file
#     This should be the file that sets up the signal window for
#     the module you are testing.
do Pipelined_CPU_wave.do

# Set the window types
view wave
view structure
view signals

# Run the simulation
run -all

# End
