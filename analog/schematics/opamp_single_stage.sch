v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -40 -100 20 {lab=#net1}
N 110 -40 110 20 {lab=#net2}
N -60 -70 70 -70 {lab=#net1}
N -100 80 -100 110 {lab=#net3}
N -100 110 110 110 {lab=#net3}
N 110 80 110 110 {lab=#net3}
N 0 110 0 170 {lab=#net3}
N -180 50 -140 50 {lab=VIN_N}
N 150 50 170 50 {lab=VIN_P}
N -100 -10 0 -10 {lab=#net1}
N 0 -70 0 -10 {lab=#net1}
N -100 -140 -100 -100 {lab=VDD}
N -100 -140 110 -140 {lab=VDD}
N 110 -140 110 -100 {lab=VDD}
N -170 -70 -100 -70 {lab=VDD}
N -170 -110 -170 -70 {lab=VDD}
N -170 -110 -100 -110 {lab=VDD}
N 110 -70 180 -70 {lab=VDD}
N 180 -110 180 -70 {lab=VDD}
N 110 -110 180 -110 {lab=VDD}
N -100 50 -20 50 {lab=GND}
N -20 50 -20 60 {lab=GND}
N 30 50 110 50 {lab=GND}
N 30 50 30 60 {lab=GND}
N -260 200 -40 200 {lab=#net4}
N -300 230 -300 280 {lab=VSS}
N 0 230 0 280 {lab=VSS}
N 340 -80 340 -10 {lab=#net5}
N 340 -10 340 120 {lab=#net5}
N 340 -110 410 -110 {lab=VDD}
N 410 -160 410 -110 {lab=VDD}
N 340 -200 340 -140 {lab=VDD}
N 0 -200 340 -200 {lab=VDD}
N 340 -160 410 -160 {lab=VDD}
N 0 -250 0 -200 {lab=VDD}
N -300 280 0 280 {lab=VSS}
N 0 280 0 350 {lab=VSS}
N -390 200 -300 200 {lab=VSS}
N -390 200 -390 280 {lab=VSS}
N -390 280 -300 280 {lab=VSS}
N 0 200 80 200 {lab=VSS}
N 80 200 80 280 {lab=VSS}
N 0 280 340 280 {lab=VSS}
N 340 180 340 280 {lab=VSS}
N 340 150 420 150 {lab=VSS}
N 420 150 420 280 {lab=VSS}
N 340 280 420 280 {lab=VSS}
N -300 -40 -300 170 {lab=#net4}
N 0 -200 0 -140 {lab=VDD}
N -300 -200 -300 -100 {lab=VDD}
N -300 -200 0 -200 {lab=VDD}
N -300 140 -240 140 {lab=#net4}
N -240 140 -240 200 {lab=#net4}
N -80 150 300 150 {lab=#net4}
N -80 150 -80 200 {lab=#net4}
N 110 -10 210 -10 {lab=#net2}
N 190 -110 190 -10 {lab=#net2}
N 190 -110 300 -110 {lab=#net2}
N -340 -70 -320 -70 {lab=VDD}
N -340 -120 -340 -70 {lab=VDD}
N -340 -120 -300 -120 {lab=VDD}
N 330 -10 450 -10 {lab=#net5}
C {devices/ipin.sym} 0 -250 1 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 170 50 2 0 {name=p5 lab=VIN_P}
C {devices/ipin.sym} 0 350 3 0 {name=p7 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 90 -70 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} -80 -70 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -120 50 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 130 50 0 1 {name=M2
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
C {devices/gnd.sym} -20 60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 30 60 0 1 {name=l4 lab=GND}
C {devices/opin.sym} 450 -10 0 0 {name=p1 lab=VOUT}
C {sky130_fd_pr/pfet_01v8.sym} 320 -110 0 0 {name=M5
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 300 -10 3 0 {name=C1
model=cap_mim_m3_1
W=25
L=20
MF=1
spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -280 200 0 1 {name=M8
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 200 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 320 150 0 0 {name=M6
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
C {devices/res.sym} 240 -10 1 0 {name=R1
value=7k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/res_high_po.sym} -300 -70 0 0 {name=R2
model=res_high_po
spiceprefix=X
W=0.35
L=14
mult=1}
C {devices/ipin.sym} -180 50 0 0 {name=p2 lab=VIN_N}
