v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -140 -30 -140 {lab=#net1}
N -30 -140 -30 -40 {lab=#net1}
C {opamp_single_stage.sym} 120 -10 0 0 {name=x1}
C {devices/res.sym} -170 50 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 50 -180 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -80 140 2 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -170 -30 1 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -290 -70 1 0 {value="dc 0 ac 1" name=V1}
C {devices/gnd.sym} -320 -70 1 0 {name=l1 lab=GND}
C {devices/vsource.sym} -160 -140 1 1 {value=1.8 name=VDD}
C {devices/gnd.sym} -190 -140 1 0 {name=l6 lab=GND}
