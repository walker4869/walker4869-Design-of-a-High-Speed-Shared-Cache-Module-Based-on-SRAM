onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xpm -L blk_mem_gen_v8_4_6 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.dpsram_w128_d2k xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dpsram_w128_d2k.udo}

run 1000ns

quit -force
