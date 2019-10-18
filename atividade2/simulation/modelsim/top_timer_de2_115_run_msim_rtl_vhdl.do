transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aluno/dlp2/atividade2/machine.vhd}

vcom -93 -work work {/home/aluno/dlp2/atividade2/timer_tb.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  timer_tb

add wave *
view structure
view signals
run -all
