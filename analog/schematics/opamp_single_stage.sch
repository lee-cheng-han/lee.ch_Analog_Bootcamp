v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -90 -50 -30 {lab=#net1}
N 160 -90 160 -30 {lab=#net2}
N -10 -120 120 -120 {lab=#net1}
N -50 30 -50 60 {lab=#net3}
N -50 60 160 60 {lab=#net3}
N 160 30 160 60 {lab=#net3}
N 50 60 50 120 {lab=#net3}
N -130 -0 -90 0 {lab=VIN_P}
N 200 -0 220 0 {lab=VIN_N}
N -50 -60 50 -60 {lab=#net1}
N 50 -120 50 -60 {lab=#net1}
N -50 -190 -50 -150 {lab=VDD}
N -50 -190 160 -190 {lab=VDD}
N 160 -190 160 -150 {lab=VDD}
N -120 -120 -50 -120 {lab=VDD}
N -120 -160 -120 -120 {lab=VDD}
N -120 -160 -50 -160 {lab=VDD}
N 160 -120 230 -120 {lab=VDD}
N 230 -160 230 -120 {lab=VDD}
N 160 -160 230 -160 {lab=VDD}
N -50 0 30 0 {lab=GND}
N 30 0 30 10 {lab=GND}
N 80 0 160 0 {lab=GND}
N 80 0 80 10 {lab=GND}
N -210 150 10 150 {lab=#net4}
N -250 180 -250 230 {lab=VSS}
N 50 180 50 230 {lab=VSS}
N 390 -130 390 -60 {lab=VOUT}
N 390 -60 390 70 {lab=VOUT}
N 390 -160 460 -160 {lab=VDD}
N 460 -210 460 -160 {lab=VDD}
N 390 -250 390 -190 {lab=VDD}
N 50 -250 390 -250 {lab=VDD}
N 390 -210 460 -210 {lab=VDD}
N 50 -300 50 -250 {lab=VDD}
N -250 230 50 230 {lab=VSS}
N 50 230 50 300 {lab=VSS}
N -340 150 -250 150 {lab=VSS}
N -340 150 -340 230 {lab=VSS}
N -340 230 -250 230 {lab=VSS}
N 50 150 130 150 {lab=VSS}
N 130 150 130 230 {lab=VSS}
N 50 230 390 230 {lab=VSS}
N 390 130 390 230 {lab=VSS}
N 390 100 470 100 {lab=VSS}
N 470 100 470 230 {lab=VSS}
N 390 230 470 230 {lab=VSS}
N -250 -90 -250 120 {lab=#net4}
N 50 -250 50 -190 {lab=VDD}
N -250 -250 -250 -150 {lab=VDD}
N -250 -250 50 -250 {lab=VDD}
N -250 90 -190 90 {lab=#net4}
N -190 90 -190 150 {lab=#net4}
N -30 100 350 100 {lab=#net4}
N -30 100 -30 150 {lab=#net4}
N 160 -60 260 -60 {lab=#net2}
N 240 -160 240 -60 {lab=#net2}
N 240 -160 350 -160 {lab=#net2}
N 380 -60 640 -60 {lab=VOUT}
C {devices/ipin.sym} 50 -300 1 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -130 0 0 0 {name=p5 lab=VIN_P}
C {devices/ipin.sym} 220 0 2 0 {name=p6 lab=VIN_N}
C {devices/ipin.sym} 50 300 3 0 {name=p7 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 140 -120 0 0 {name=M4
L=0.5
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" 
nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -30 -120 0 1 {name=M3
L=0.5
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" 
nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -70 0 0 0 {name=M1
L=0.5
W=6
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" 
nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 180 0 0 1 {name=M2
L=0.5
W=6
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" 
nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X}
C {devices/gnd.sym} 30 10 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 80 10 0 1 {name=l4 lab=GND}
C {devices/opin.sym} 640 -60 0 0 {name=p1 lab=VOUT}
C {sky130_fd_pr/pfet_01v8.sym} 370 -160 0 0 {name=M5
L=0.5
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" 
nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 350 -60 3 0 {name=C1
model=cap_mim_m3_1
W=25
L=20
MF=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -230 150 0 1 {name=M8
L=1.0
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" 
nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 30 150 0 0 {name=M7
L=1.0
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" 
nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 370 100 0 0 {name=M6
L=1.0
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" 
nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/isource.sym} -250 -120 0 0 {name=I0 value=5u}
C {devices/res.sym} 290 -60 1 0 {name=R1
value=7k
footprint=1206
device=resistor
m=1}
