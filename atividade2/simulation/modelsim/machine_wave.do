onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /machine/clk
add wave -noupdate -group estados /machine/state_reg
add wave -noupdate -group estados /machine/state_next
add wave -noupdate -group entrada_ctrl /machine/rst
add wave -noupdate -group entrada_ctrl /machine/load
add wave -noupdate -group entrada_ctrl /machine/button
add wave -noupdate -group entrada_ctrl /machine/load
add wave -noupdate -group entrada_ctrl /machine/enable
add wave -noupdate -group ativar_buzzer /machine/dispara
add wave -noupdate -group ativar_buzzer /machine/dispara_sleep
add wave -noupdate -group look_ahead_buffer /machine/buzzer_next
add wave -noupdate -group look_ahead_buffer /machine/buzzer_buf_reg
add wave -noupdate -group sinais /machine/sel_inc
add wave -noupdate -group sinais /machine/hra_d_timerr
add wave -noupdate -group sinais /machine/hra_u_timerr
add wave -noupdate -group sinais /machine/min_d_timerr
add wave -noupdate -group sinais /machine/min_u_timerr
add wave -noupdate -group load_reg /machine/hra_d_loadd_reg
add wave -noupdate -group load_reg /machine/hra_u_loadd_reg
add wave -noupdate -group load_reg /machine/min_d_loadd_reg
add wave -noupdate -group load_reg /machine/min_u_loadd_reg
add wave -noupdate /machine/min_d_sleep_reg
add wave -noupdate /machine/buzzer
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
