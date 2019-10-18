vcom -93 -work work {../../machine.vhd}
vsim work.machine
do machine_wave.do
force -freeze sim:/machine/rst 1 0, 0 10
force -freeze sim:/machine/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/machine/load 1 0, 0 100
force -freeze sim:/machine/enable 0 0, 1 100
force -freeze sim:/machine/button 0 500, 1 600, 0 1000, 1 1100, 0 1200, 1 1300
force -freeze sim:/machine/hra_d_timer 0000 0
force -freeze sim:/machine/hra_u_timer 0000 0
force -freeze sim:/machine/min_u_timer 0000 0
force -freeze sim:/machine/min_d_timer 0000 0, 0010 200, 0110 900
force -freeze sim:/machine/hra_d_load 0000 0
force -freeze sim:/machine/hra_u_load 0000 0
force -freeze sim:/machine/min_d_load 0001 100
force -freeze sim:/machine/min_u_load 0000 0
run 1500