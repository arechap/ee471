onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Pipelined_CPU_testbench/clk
add wave -noupdate -childformat {{{/Pipelined_CPU_testbench/dut/RF/RegDataBus[19]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[18]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[17]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[16]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[15]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[14]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[13]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[12]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[11]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[10]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[9]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[8]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[7]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[6]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[5]} -radix decimal} {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[4]} -radix decimal}} -expand -subitemconfig {{/Pipelined_CPU_testbench/dut/RF/RegDataBus[19]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[18]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[17]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[16]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[15]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[14]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[13]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[12]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[11]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[10]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[9]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[8]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[7]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[6]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[5]} {-height 15 -radix decimal} {/Pipelined_CPU_testbench/dut/RF/RegDataBus[4]} {-height 15 -radix decimal}} /Pipelined_CPU_testbench/dut/RF/RegDataBus
add wave -noupdate /Pipelined_CPU_testbench/dut/DM/datamem
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/programCount
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/newPC
add wave -noupdate -radix hexadecimal /Pipelined_CPU_testbench/dut/IFU/imm1
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/target
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/regData
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/branch
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/jump
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/jumpReg
add wave -noupdate /Pipelined_CPU_testbench/dut/IFU/LTZ
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1050550 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 258
configure wave -valuecolwidth 167
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {3395054 ps}
