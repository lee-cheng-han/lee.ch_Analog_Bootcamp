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
N -1490 -680 -1440 -680 {lab=VIN_P}
N -1440 -680 -1440 -610 {lab=VIN_P}
N -1440 -610 -1400 -610 {lab=VIN_P}
N -1510 -590 -1400 -590 {lab=#net3}
N -1470 -530 -1200 -530 {lab=#net3}
N -1470 -590 -1470 -530 {lab=#net3}
N -1140 -530 -1070 -530 {lab=VOUT}
N -1070 -600 -1070 -530 {lab=VOUT}
C {devices/vsource.sym} -1530 -750 1 1 {value=1.8 name=VDD}
C {devices/vsource.sym} -1430 -460 0 0 {value=0 name=VSS}
C {devices/gnd.sym} -1430 -430 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -1560 -750 1 0 {name=l6 lab=GND}
C {sky130_fd_pr/corner.sym} -870 -790 0 0 {name=CORNER1 only_toplevel=false corner=tt}
C {devices/code_shown.sym} -870 -450 0 0 {name=s1
only_toplevel=true
value= "
.control
ac dec 100 1 1e9
let Zin = mag(v(vin_p)/i(V1))
plot Zin
.endc

"}
C {opamp_single_stage.sym} -1250 -600 0 0 {name=x1}
C {devices/opin.sym} -1050 -600 0 0 {name=p1 lab=VOUT}
C {devices/vsource.sym} -1520 -680 1 0 {value="dc 0 ac 1" name=V1}
C {devices/res.sym} -1540 -590 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -1550 -680 1 0 {name=l1 lab=GND}
C {devices/gnd.sym} -1570 -590 1 0 {name=l2 lab=GND}
C {devices/res.sym} -1170 -530 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -1440 -640 0 0 {name=p2 sig_type=std_logic lab=VIN_P}
