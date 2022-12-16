onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /baude_rate/DE10_clock
add wave -noupdate /baude_rate/baudeRate
add wave -noupdate /baude_rate/rst
add wave -noupdate /baude_rate/clk
add wave -noupdate /baude_rate/br_X1_tick
add wave -noupdate /baude_rate/br_X16_tick
add wave -noupdate /baude_rate/countx1
add wave -noupdate /baude_rate/countx16
add wave -noupdate /baude_rate/tick
add wave -noupdate /baude_rate/tickx16
add wave -noupdate /baude_rate/divisor_bd
add wave -noupdate /baude_rate/divisor_bdx16
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 234
configure wave -valuecolwidth 100
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
configure wave -timelineunits ps
update
WaveRestoreZoom {10000000164 ps} {10000001044 ps}
