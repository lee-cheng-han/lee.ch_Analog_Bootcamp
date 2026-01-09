v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -190 -260 -190 -200 {lab=#net1}
N 20 -260 20 -200 {lab=#net2}
N -150 -290 -20 -290 {lab=#net1}
N -190 -140 -190 -110 {lab=#net3}
N -190 -110 20 -110 {lab=#net3}
N 20 -140 20 -110 {lab=#net3}
N -90 -110 -90 -50 {lab=#net3}
N -270 -170 -230 -170 {lab=VIN_P}
N 60 -170 80 -170 {lab=VIN_N}
N -190 -230 -90 -230 {lab=#net1}
N -90 -290 -90 -230 {lab=#net1}
N -190 -360 -190 -320 {lab=VDD}
N -190 -360 20 -360 {lab=VDD}
N 20 -360 20 -320 {lab=VDD}
N -260 -290 -190 -290 {lab=VDD}
N -260 -330 -260 -290 {lab=VDD}
N -260 -330 -190 -330 {lab=VDD}
N 20 -290 90 -290 {lab=VDD}
N 90 -330 90 -290 {lab=VDD}
N 20 -330 90 -330 {lab=VDD}
N -190 -170 -110 -170 {lab=GND}
N -110 -170 -110 -160 {lab=GND}
N -60 -170 20 -170 {lab=GND}
N -60 -170 -60 -160 {lab=GND}
N -350 -20 -130 -20 {lab=#net4}
N -390 10 -390 60 {lab=VSS}
N -90 10 -90 60 {lab=VSS}
N 20 -230 150 -230 {lab=#net2}
N 250 -300 250 -230 {lab=VOUT}
N 250 -230 250 -100 {lab=VOUT}
N 120 -330 210 -330 {lab=#net2}
N 120 -330 120 -230 {lab=#net2}
N 250 -330 320 -330 {lab=VDD}
N 320 -380 320 -330 {lab=VDD}
N 250 -420 250 -360 {lab=VDD}
N -90 -420 250 -420 {lab=VDD}
N 250 -380 320 -380 {lab=VDD}
N -90 -470 -90 -420 {lab=VDD}
N -390 60 -90 60 {lab=VSS}
N -90 60 -90 130 {lab=VSS}
N -480 -20 -390 -20 {lab=VSS}
N -480 -20 -480 60 {lab=VSS}
N -480 60 -390 60 {lab=VSS}
N -90 -20 -10 -20 {lab=VSS}
N -10 -20 -10 60 {lab=VSS}
N -90 60 250 60 {lab=VSS}
N 250 -40 250 60 {lab=VSS}
N 250 -70 330 -70 {lab=VSS}
N 330 -70 330 60 {lab=VSS}
N 250 60 330 60 {lab=VSS}
N -390 -260 -390 -50 {lab=#net4}
N -90 -420 -90 -360 {lab=VDD}
N -390 -420 -390 -320 {lab=VDD}
N -390 -420 -90 -420 {lab=VDD}
N 210 -230 500 -230 {lab=VOUT}
N 410 -230 410 -90 {lab=VOUT}
N 410 -30 410 60 {lab=VSS}
N 330 60 410 60 {lab=VSS}
N -390 -80 -330 -80 {lab=#net4}
N -330 -80 -330 -20 {lab=#net4}
N -170 -70 210 -70 {lab=#net4}
N -170 -70 -170 -20 {lab=#net4}
C {devices/ipin.sym} -90 -470 1 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -270 -170 0 0 {name=p5 lab=VIN_P}
C {devices/ipin.sym} 80 -170 2 0 {name=p6 lab=VIN_N}
C {devices/ipin.sym} -90 130 3 0 {name=p7 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 0 -290 0 0 {name=M4
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -170 -290 0 1 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -210 -170 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 40 -170 0 1 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} -110 -160 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -60 -160 0 1 {name=l4 lab=GND}
C {devices/opin.sym} 500 -230 0 0 {name=p1 lab=VOUT}
C {sky130_fd_pr/pfet_01v8.sym} 230 -330 0 0 {name=M5
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 180 -230 3 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -370 -20 0 1 {name=M8
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -110 -20 0 0 {name=M7
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 230 -70 0 0 {name=M6
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 410 -60 0 0 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/res.sym} -390 -290 0 0 {name=R1
value=240k
footprint=1206
device=resistor
m=1}
