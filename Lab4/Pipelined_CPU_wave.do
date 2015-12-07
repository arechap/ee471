onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Pipelined_CPU_testbench/clk
add wave -noupdate -childformat {{{/Pipelined_CPU_testbench/dut/RF/RegDataBus[19]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[18]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[17]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[16]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[15]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[14]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[13]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[12]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[11]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[10]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[9]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[8]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[7]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[6]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[5]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[4]} -radix decimal}} -expand -subitemconfig {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[19]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[18]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[17]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[16]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[15]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[14]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[13]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[12]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[11]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[10]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[9]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[8]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[7]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[6]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[5]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[4]} {-height 15 -radix decimal}} /Pipelined_CPU_testbench/dut/RF/RegDataBus
add wave -noupdate /Pipelined_CPU_testbench/dut/DM/datamem
add wave -noupdate -radix decimal /Pipelined_CPU_testbench/dut/IFU/programCount
add wave -noupdate -radix decimal /Pipelined_CPU_testbench/dut/IFU/newPC
add wave -noupdate -radix decimal /Pipelined_CPU_testbench/dut/IFU/imm1
add wave -noupdate -radix decimal /Pipelined_CPU_testbench/dut/IFU/target
add wave -noupdate -radix decimal /Pipelined_CPU_testbench/dut/IFU/regData
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/branch
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/jump
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/jumpReg
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/LTZ
add wave -noupdate -divider FwdValueA
add wave -noupdate -radix hexadecimal /Pipelined_CPU_testbench/dut/forwardedValueA/out
add wave -noupdate -radix hexadecimal /Pipelined_CPU_testbench/dut/forwardedValueA/i0
add wave -noupdate -radix hexadecimal /Pipelined_CPU_testbench/dut/forwardedValueA/i1
add wave -noupdate /Pipelined_CPU_testbench/dut/forwardedValueA/sel
add wave -noupdate -divider ChooseAorFwd
add wave -noupdate -radix hexadecimal /Pipelined_CPU_testbench/dut/choseAorForward/out
add wave -noupdate -radix hexadecimal /Pipelined_CPU_testbench/dut/choseAorForward/i0
add wave -noupdate -radix hexadecimal /Pipelined_CPU_testbench/dut/choseAorForward/i1
add wave -noupdate /Pipelined_CPU_testbench/dut/choseAorForward/sel
add wave -noupdate -divider RegCtrl0
add wave -noupdate /Pipelined_CPU_testbench/dut/RegCtrl0/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegCtrl0/dataOut
add wave -noupdate -divider RegCtrl1
add wave -noupdate /Pipelined_CPU_testbench/dut/RegCtrl1/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegCtrl1/dataOut
add wave -noupdate -divider RegCtrl2
add wave -noupdate /Pipelined_CPU_testbench/dut/RegCtr2/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegCtr2/dataOut
add wave -noupdate -divider RegCtrl3
add wave -noupdate /Pipelined_CPU_testbench/dut/RegCtr3/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegCtr3/dataOut
add wave -noupdate -divider RegRs0
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRs0/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRs0/dataOut
add wave -noupdate -divider RegRs1
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRs1/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRs1/dataOut
add wave -noupdate -divider RegRs2
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRs2/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRs2/dataOut
add wave -noupdate -divider RegRs3
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRs3/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRs3/dataOut
add wave -noupdate -divider RegRt0
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRt0/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRt0/dataOut
add wave -noupdate -divider RegRt1
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRt1/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRt1/dataOut
add wave -noupdate -divider RegRt2
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRt2/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRt2/dataOut
add wave -noupdate -divider RegRt3
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRt3/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRt3/dataOut
add wave -noupdate -divider RegRd0
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRd0/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRd0/dataOut
add wave -noupdate -divider RegRd1
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRd1/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRd1/dataOut
add wave -noupdate -divider RegRd2
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRd2/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRd2/dataOut
add wave -noupdate -divider RegRd3
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRd3/dataIn
add wave -noupdate /Pipelined_CPU_testbench/dut/RegRd3/dataOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {297939 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 258
configure wave -valuecolwidth 167
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 100
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {974723 ps} {1406928 ps}
