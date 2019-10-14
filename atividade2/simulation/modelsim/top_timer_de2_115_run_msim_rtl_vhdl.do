transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/aluno/dlp2/atividade2/db {/home/aluno/dlp2/atividade2/db/pll_50mhz_10khz_altpll.v}
vcom -93 -work work {/home/aluno/dlp2/atividade2/top_timer_de2_115.vhd}
vcom -93 -work work {/home/aluno/dlp2/atividade2/bcd2ssd.vhd}
vcom -93 -work work {/home/aluno/dlp2/atividade2/timer.vhd}
vcom -93 -work work {/home/aluno/dlp2/atividade2/pll_50mhz_10khz.vhd}
vcom -93 -work work {/home/aluno/dlp2/atividade2/sel_disp.vhd}
vcom -93 -work work {/home/aluno/dlp2/atividade2/machine.vhd}
vcom -93 -work work {/home/aluno/dlp2/atividade2/counter.vhd}

vcom -93 -work work {/home/aluno/dlp2/atividade2/timer_tb.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  timer_tb

add wave *
view structure
view signals
run -all
