onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Zynq7_opt

do {wave.do}

view wave
view structure
view signals

do {Zynq7.udo}

run -all

quit -force
