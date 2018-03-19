onerror {exit -code 1}
vlib work
vcom -work work adder.vho
vcom -work work ripple_carry_adder.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ripple_carry_vhd_vec_tst
vcd file -direction adder.msim.vcd
vcd add -internal ripple_carry_vhd_vec_tst/*
vcd add -internal ripple_carry_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

