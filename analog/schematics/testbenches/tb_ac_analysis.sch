v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 0 10 0 {lab=#net1}
N 10 0 10 120 {lab=#net1}
N -270 90 -170 90 {lab=#net2}
N -110 90 -10 90 {lab=#net3}
N -10 90 -10 140 {lab=#net3}
N -10 140 10 140 {lab=#net3}
N -270 190 -170 190 {lab=#net2}
N -110 190 -50 190 {lab=#net4}
N -50 160 -50 190 {lab=#net4}
N -50 160 10 160 {lab=#net4}
N -20 180 -20 260 {lab=#net5}
N -20 180 10 180 {lab=#net5}
N -270 90 -270 140 {lab=#net2}
N -270 140 -270 190 {lab=#net2}
N -80 90 -80 110 {lab=#net3}
N -80 170 -50 170 {lab=#net4}
N 310 150 390 150 {lab=VOUT}
C {devices/vsource.sym} -120 0 1 1 {value=1.8 name=VDD}
C {devices/vsource.sym} -20 290 0 0 {value=0 name=VSS}
C {devices/vsource.sym} -300 140 1 0 {value="dc 0.9 ac 0" name=VCM}
C {devices/res.sym} -140 90 1 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -140 190 1 0 {name=R3
value=1M
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -20 320 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -330 140 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} -150 0 1 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} 340 -70 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} -80 140 2 0 {value="dc 0 ac 1" name=VDIFF}
C {devices/code_shown.sym} 350 240 0 0 {name=s2
only_toplevel=true
value= "
* (your circuit here)

.ac dec 100 1 100Meg

.control
  set keepmeas

  * Differential: VDIFF on, VCM off
  alter @VCM[acmag]=0
  alter @VDIFF[acmag]=1
  run
  meas ac ad_db FIND vdb(VOUT) AT=1

  * Common-mode: VCM on, VDIFF off
  alter @VCM[acmag]=1
  alter @VDIFF[acmag]=0
  run
  meas ac acm_db FIND vdb(VOUT) AT=1

.endc 
"}
C {devices/opin.sym} 390 150 0 0 {name=p1 lab=VOUT}
C {opamp_single_stage.sym} 160 150 0 0 {name=x1}
C {devices/code_shown.sym} -160 400 0 0 {name=s1
only_toplevel=true
value= " 
.ac dec 100 1 100Meg
.control
run

--- Open-loop DC gain ---
meas ac A0_db FIND vdb(VOUT) AT=1

--- 3 dB bandwidth ---
meas ac BW FIND frequency WHEN vdb(VOUT)=A0_db-3

plot vdb(VOUT)
.endc
"}
