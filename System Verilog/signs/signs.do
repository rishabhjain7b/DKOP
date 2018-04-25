# do file for signs.sv

vlog -sv signs.sv
vsim -novopt signs
run -all
