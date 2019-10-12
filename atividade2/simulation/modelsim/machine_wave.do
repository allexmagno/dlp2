onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /machine/clk
add wave -noupdate /machine/rst
add wave -noupdate /machine/button
add wave -noupdate /machine/load
add wave -noupdate /machine/enable
add wave -noupdate /machine/hra_d_timer
add wave -noupdate /machine/hra_u_timer
add wave -noupdate /machine/min_d_timer
add wave -noupdate /machine/min_u_timer
add wave -noupdate /machine/hra_d_load
add wave -noupdate /machine/hra_u_load
add wave -noupdate /machine/min_d_load
add wave -noupdate /machine/min_u_load
add wave -noupdate /machine/buzzer
add wave -noupdate /machine/state_reg
add wave -noupdate /machine/state_next
add wave -noupdate /machine/dispara
add wave -noupdate /machine/dispara_sleep
add wave -noupdate /machine/buzzer_next
add wave -noupdate /machine/buzzer_buf_reg
add wave -noupdate /machine/sel_inc
add wave -noupdate /machine/hra_d_timerr
add wave -noupdate /machine/hra_u_timerr
add wave -noupdate /machine/min_d_timerr
add wave -noupdate /machine/min_u_timerr
add wave -noupdate /machine/hra_d_loadd
add wave -noupdate /machine/hra_u_loadd
add wave -noupdate /machine/min_d_loadd
add wave -noupdate /machine/min_u_loadd
add wave -noupdate /machine/min_d_sleep_next
add wave -noupdate /machine/min_d_sleep_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {1 ns}
