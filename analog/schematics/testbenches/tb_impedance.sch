v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1500 -750 -1400 -750 {lab=#net1}
N -1400 -750 -1400 -630 {lab=#net1}
N -1430 -570 -1430 -490 {lab=#net2}
N -1430 -570 -1400 -570 {lab=#net2}
N -1100 -600 -1050 -600 {lab=VOUT}
N -1560 -360 -1560 -350 {lab=#net3}
N -1560 -350 -1520 -350 {lab=#net3}
N -1520 -350 -1480 -350 {lab=#net3}
N -1480 -360 -1480 -350 {lab=#net3}
N -1560 -470 -1560 -420 {lab=VIN_N}
N -1500 -500 -1480 -500 {lab=VIN_P}
N -1480 -500 -1480 -420 {lab=VIN_P}
N -1560 -500 -1560 -470 {lab=VIN_N}
N -1560 -610 -1400 -610 {lab=VIN_N}
N -1480 -590 -1480 -500 {lab=VIN_P}
N -1480 -590 -1400 -590 {lab=VIN_P}
N -1560 -610 -1560 -500 {lab=VIN_N}
C {devices/vsource.sym} -1530 -750 1 1 {value=1.8 name=VDD}
C {devices/vsource.sym} -1430 -460 0 0 {value=0 name=VSS}
C {devices/gnd.sym} -1430 -430 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -1560 -750 1 0 {name=l6 lab=GND}
C {sky130_fd_pr/corner.sym} -870 -790 0 0 {name=CORNER1 only_toplevel=false corner=tt}
C {devices/code_shown.sym} -1180 -790 0 0 {name=s1
only_toplevel=true
value= "
.save all
.op
.ac dec 100 1 1e9
.plot mag(v(vin_p, vin_n))
"}
C {opamp_single_stage.sym} -1250 -600 0 0 {name=x1}
C {devices/opin.sym} -1050 -600 0 0 {name=p1 lab=VOUT}
C {devices/res.sym} -1560 -390 0 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -1520 -320 0 0 {value=0.9 name=VCM}
C {devices/gnd.sym} -1520 -290 0 0 {name=l3 lab=GND}
C {devices/res.sym} -1480 -390 0 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} -1530 -500 1 0 {name=IVIN_P1 value = "ac = 1"}
C {devices/lab_pin.sym} -1480 -570 0 0 {name=p4 sig_type=std_logic lab=VIN_P}
C {devices/lab_pin.sym} -1520 -610 1 0 {name=p2 sig_type=std_logic lab=VIN_N}
