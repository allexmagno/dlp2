vcom -93 -work work {/home/allex.m/192/dlp2/dlp2/atividade2/machine.vhd}

vsim work.machine

do machine_wave.do
force -freeze sim:/machine/clk 1 0, 0 {50000000000 ps} -r 100ms