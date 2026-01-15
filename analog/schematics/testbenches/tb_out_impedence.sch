v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -240 -150 -140 -150 {lab=#net1}
N -140 -150 -140 -90 {lab=#net1}
N -140 -30 -140 60 {lab=#net2}
N -190 -70 -140 -70 {lab=#net3}
N -250 -70 -190 -70 {lab=#net3}
N 160 -60 230 -60 {lab=VOUT}
N 200 -90 200 -60 {lab=VOUT}
C {opamp_single_stage.sym} 10 -60 0 0 {name=x1}
C {devices/opin.sym} 200 -90 3 0 {name=p1 lab=VOUT}
C {devices/vsource.sym} -270 -150 1 1 {value=1.8 name=VDD}
C {devices/vsource.sym} -140 90 0 0 {value=0 name=VSS}
C {devices/gnd.sym} -140 120 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -310 -70 1 0 {name=l1 lab=GND}
C {sky130_fd_pr/corner.sym} 260 70 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 150 100 0 0 {name=s2
only_toplevel=true
value="
.ac dec 10 1 10G
.control
run
let zout = abs(v(vout))
meas ac Zout_cl MAX zout FROM=1 TO=10
.endc


"
}
C {devices/vsource.sym} -280 -70 1 0 {name=V1 value="dc 0.9 ac 0" savecurrent=false}
C {devices/isource.sym} 260 -60 1 0 {name=I0 value="dc 0 ac 1"}
C {devices/gnd.sym} 290 -60 3 0 {name=l2 lab=GND}
C {devices/gnd.sym} -140 -50 1 0 {name=l3 lab=GND}
C {devices/gnd.sym} -300 -150 1 0 {name=l5 lab=GND}
