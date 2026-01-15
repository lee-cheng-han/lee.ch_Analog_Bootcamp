v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -140 -30 -140 {lab=#net1}
N -30 -140 -30 -40 {lab=#net1}
N -30 20 -30 110 {lab=#net2}
N -310 -70 -310 -40 {lab=#net3}
N -310 -70 -270 -70 {lab=#net3}
N -210 -70 -70 -70 {lab=#net4}
N -70 -70 -70 -20 {lab=#net4}
N -70 -20 -30 -20 {lab=#net4}
N -110 0 -30 0 {lab=#net5}
N -240 0 -240 90 {lab=#net6}
N -240 0 -170 0 {lab=#net6}
N -90 -160 -90 -70 {lab=#net4}
N -80 0 -80 80 {lab=#net5}
N -80 80 90 80 {lab=#net5}
N 150 80 280 80 {lab=VOUT}
N 280 -10 280 80 {lab=VOUT}
N 270 -10 340 -10 {lab=VOUT}
N -90 -160 10 -160 {lab=#net4}
N 10 -160 10 -150 {lab=#net4}
C {opamp_single_stage.sym} 120 -10 0 0 {name=x1}
C {devices/res.sym} -140 0 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 120 80 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 10 -120 0 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -240 -70 1 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -310 -10 0 0 {value="dc 0 ac 1" name=V1}
C {devices/gnd.sym} -310 20 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -160 -140 1 1 {value=1.8 name=VDD}
C {devices/gnd.sym} -190 -140 1 0 {name=l6 lab=GND}
C {devices/vsource.sym} -30 140 0 0 {value=0 name=VSS}
C {devices/gnd.sym} -30 170 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -240 120 0 0 {value="dc 0 ac 1" name=V2}
C {devices/gnd.sym} -240 150 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 10 -90 0 0 {name=l3 lab=GND}
C {devices/opin.sym} 340 -10 0 0 {name=p1 lab=VOUT}
C {sky130_fd_pr/corner.sym} 700 -320 0 0 {name=CORNER1 only_toplevel=false corner=tt}
C {devices/code_shown.sym} 700 20 0 0 {name=s1
only_toplevel=true
value= "

.param Ad_dB  = 29.5
.param Ad_lin = '10**(Ad_dB/20)'

.ac dec 100 1 1e9

* Magnitude of VOUT at 1 Hz (≈ DC)
.meas ac Acm_lin  FIND vm(vout) AT=1
.meas ac CMRR_dB  PARAM='20*log10(Ad_lin/Acm_lin)'
"}
