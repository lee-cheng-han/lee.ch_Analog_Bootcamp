v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -260 -240 -160 -240 {lab=#net1}
N -160 -240 -160 -120 {lab=#net1}
N -440 -150 -340 -150 {lab=#net2}
N -280 -150 -180 -150 {lab=#net3}
N -180 -150 -180 -100 {lab=#net3}
N -180 -100 -160 -100 {lab=#net3}
N -440 -50 -340 -50 {lab=#net2}
N -280 -50 -220 -50 {lab=#net4}
N -220 -80 -220 -50 {lab=#net4}
N -220 -80 -160 -80 {lab=#net4}
N -190 -60 -190 20 {lab=#net5}
N -190 -60 -160 -60 {lab=#net5}
N -440 -150 -440 -100 {lab=#net2}
N -440 -100 -440 -50 {lab=#net2}
N -250 -150 -250 -130 {lab=#net3}
N -250 -70 -220 -70 {lab=#net4}
N 140 -90 220 -90 {lab=VOUT}
C {devices/vsource.sym} -290 -240 1 1 {value=1.8 name=VDD}
C {devices/vsource.sym} -190 50 0 0 {value=0 name=VSS}
C {devices/vsource.sym} -470 -100 1 0 {value=0.9 name=VCM}
C {devices/res.sym} -310 -150 1 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -310 -50 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -190 80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -500 -100 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} -320 -240 1 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} 170 -310 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} -250 -100 2 0 {value=0 name=VDIFF}
C {devices/code_shown.sym} 60 -280 0 0 {name=s2
only_toplevel=true
value= 
.op}
C {opamp_single_stage.sym} -10 -90 0 0 {name=x1}
C {devices/opin.sym} 220 -90 0 0 {name=p1 lab=VOUT}
