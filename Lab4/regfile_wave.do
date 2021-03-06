onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /regstim/ReadRegister1
add wave -noupdate -radix hexadecimal /regstim/ReadData1
add wave -noupdate -radix unsigned /regstim/ReadRegister2
add wave -noupdate -radix hexadecimal /regstim/ReadData2
add wave -noupdate -radix unsigned /regstim/WriteRegister
add wave -noupdate -radix hexadecimal /regstim/WriteData
add wave -noupdate -color Gold -format Literal -radix binary /regstim/RegWrite
add wave -noupdate /regstim/clk
add wave -noupdate {/regstim/reg1/eachRegister[1]/register/enabledData}
add wave -noupdate {/regstim/reg1/eachRegister[1]/register/enable}
add wave -noupdate {/regstim/reg1/eachRegister[1]/register/reset}
add wave -noupdate -radix hexadecimal {/regstim/reg1/eachRegister[1]/register/dataIn}
add wave -noupdate -radix hexadecimal {/regstim/reg1/eachRegister[1]/register/dataOut}
add wave -noupdate -radix hexadecimal -childformat {{{/regstim/reg1/RegDataBus[31]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30]} -radix hexadecimal -childformat {{{/regstim/reg1/RegDataBus[30][31]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][30]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][29]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][28]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][27]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][26]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][25]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][24]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][23]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][22]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][21]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][20]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][19]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][18]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][17]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][16]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][15]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][14]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][13]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][12]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][11]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][10]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][9]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][8]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][7]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][6]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][5]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][4]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][3]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][2]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][1]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][0]} -radix hexadecimal}}} {{/regstim/reg1/RegDataBus[29]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[28]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[27]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[26]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[25]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[24]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[23]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[22]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[21]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[20]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[19]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[18]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[17]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[16]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[15]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[14]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[13]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[12]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[11]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[10]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[9]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[8]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[7]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[6]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[5]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[4]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[3]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2]} -radix hexadecimal -childformat {{{/regstim/reg1/RegDataBus[2][31]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][30]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][29]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][28]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][27]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][26]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][25]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][24]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][23]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][22]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][21]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][20]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][19]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][18]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][17]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][16]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][15]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][14]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][13]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][12]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][11]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][10]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][9]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][8]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][7]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][6]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][5]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][4]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][3]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][2]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][1]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][0]} -radix hexadecimal}}} {{/regstim/reg1/RegDataBus[1]} -radix hexadecimal -childformat {{{/regstim/reg1/RegDataBus[1][31]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][30]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][29]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][28]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][27]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][26]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][25]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][24]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][23]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][22]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][21]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][20]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][19]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][18]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][17]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][16]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][15]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][14]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][13]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][12]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][11]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][10]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][9]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][8]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][7]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][6]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][5]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][4]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][3]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][2]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][1]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][0]} -radix hexadecimal}}} {{/regstim/reg1/RegDataBus[0]} -radix hexadecimal}} -expand -subitemconfig {{/regstim/reg1/RegDataBus[31]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30]} {-height 15 -radix hexadecimal -childformat {{{/regstim/reg1/RegDataBus[30][31]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][30]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][29]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][28]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][27]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][26]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][25]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][24]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][23]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][22]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][21]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][20]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][19]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][18]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][17]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][16]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][15]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][14]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][13]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][12]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][11]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][10]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][9]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][8]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][7]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][6]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][5]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][4]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][3]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][2]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][1]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[30][0]} -radix hexadecimal}}} {/regstim/reg1/RegDataBus[30][31]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][30]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][29]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][28]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][27]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][26]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][25]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][24]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][23]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][22]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][21]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][20]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][19]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][18]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][17]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][16]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][15]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][14]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][13]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][12]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][11]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][10]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][9]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][8]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][7]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][6]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][5]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][4]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][3]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][2]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][1]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[30][0]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[29]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[28]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[27]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[26]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[25]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[24]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[23]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[22]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[21]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[20]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[19]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[18]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[17]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[16]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[15]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[14]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[13]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[12]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[11]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[10]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[9]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[8]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[7]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[6]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[5]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[4]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[3]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2]} {-height 15 -radix hexadecimal -childformat {{{/regstim/reg1/RegDataBus[2][31]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][30]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][29]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][28]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][27]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][26]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][25]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][24]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][23]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][22]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][21]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][20]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][19]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][18]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][17]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][16]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][15]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][14]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][13]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][12]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][11]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][10]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][9]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][8]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][7]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][6]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][5]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][4]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][3]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][2]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][1]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[2][0]} -radix hexadecimal}}} {/regstim/reg1/RegDataBus[2][31]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][30]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][29]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][28]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][27]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][26]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][25]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][24]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][23]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][22]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][21]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][20]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][19]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][18]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][17]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][16]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][15]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][14]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][13]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][12]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][11]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][10]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][9]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][8]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][7]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][6]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][5]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][4]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][3]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][2]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][1]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[2][0]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1]} {-height 15 -radix hexadecimal -childformat {{{/regstim/reg1/RegDataBus[1][31]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][30]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][29]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][28]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][27]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][26]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][25]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][24]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][23]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][22]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][21]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][20]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][19]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][18]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][17]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][16]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][15]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][14]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][13]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][12]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][11]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][10]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][9]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][8]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][7]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][6]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][5]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][4]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][3]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][2]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][1]} -radix hexadecimal} {{/regstim/reg1/RegDataBus[1][0]} -radix hexadecimal}}} {/regstim/reg1/RegDataBus[1][31]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][30]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][29]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][28]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][27]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][26]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][25]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][24]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][23]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][22]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][21]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][20]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][19]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][18]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][17]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][16]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][15]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][14]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][13]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][12]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][11]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][10]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][9]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][8]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][7]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][6]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][5]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][4]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][3]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][2]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][1]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[1][0]} {-height 15 -radix hexadecimal} {/regstim/reg1/RegDataBus[0]} {-height 15 -radix hexadecimal}} /regstim/reg1/RegDataBus
add wave -noupdate -childformat {{{/regstim/reg1/SelectWriteRegister[31]} -radix binary} {{/regstim/reg1/SelectWriteRegister[30]} -radix binary} {{/regstim/reg1/SelectWriteRegister[29]} -radix binary} {{/regstim/reg1/SelectWriteRegister[28]} -radix binary} {{/regstim/reg1/SelectWriteRegister[27]} -radix binary} {{/regstim/reg1/SelectWriteRegister[26]} -radix binary} {{/regstim/reg1/SelectWriteRegister[25]} -radix binary} {{/regstim/reg1/SelectWriteRegister[24]} -radix binary} {{/regstim/reg1/SelectWriteRegister[23]} -radix binary} {{/regstim/reg1/SelectWriteRegister[22]} -radix binary} {{/regstim/reg1/SelectWriteRegister[21]} -radix binary} {{/regstim/reg1/SelectWriteRegister[20]} -radix binary} {{/regstim/reg1/SelectWriteRegister[19]} -radix binary} {{/regstim/reg1/SelectWriteRegister[18]} -radix binary} {{/regstim/reg1/SelectWriteRegister[17]} -radix binary} {{/regstim/reg1/SelectWriteRegister[16]} -radix binary} {{/regstim/reg1/SelectWriteRegister[15]} -radix binary} {{/regstim/reg1/SelectWriteRegister[14]} -radix binary} {{/regstim/reg1/SelectWriteRegister[13]} -radix binary} {{/regstim/reg1/SelectWriteRegister[12]} -radix binary} {{/regstim/reg1/SelectWriteRegister[11]} -radix binary} {{/regstim/reg1/SelectWriteRegister[10]} -radix binary} {{/regstim/reg1/SelectWriteRegister[9]} -radix binary} {{/regstim/reg1/SelectWriteRegister[8]} -radix binary} {{/regstim/reg1/SelectWriteRegister[7]} -radix binary} {{/regstim/reg1/SelectWriteRegister[6]} -radix binary} {{/regstim/reg1/SelectWriteRegister[5]} -radix binary} {{/regstim/reg1/SelectWriteRegister[4]} -radix binary} {{/regstim/reg1/SelectWriteRegister[3]} -radix binary} {{/regstim/reg1/SelectWriteRegister[2]} -radix binary} {{/regstim/reg1/SelectWriteRegister[1]} -radix binary} {{/regstim/reg1/SelectWriteRegister[0]} -radix binary}} -expand -subitemconfig {{/regstim/reg1/SelectWriteRegister[31]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[30]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[29]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[28]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[27]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[26]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[25]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[24]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[23]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[22]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[21]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[20]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[19]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[18]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[17]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[16]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[15]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[14]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[13]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[12]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[11]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[10]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[9]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[8]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[7]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[6]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[5]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[4]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[3]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[2]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[1]} {-format Literal -height 15 -radix binary} {/regstim/reg1/SelectWriteRegister[0]} {-format Literal -height 15 -radix binary}} /regstim/reg1/SelectWriteRegister
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5699 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 341
configure wave -valuecolwidth 68
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {17656 ps}
