v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -260 -240 -160 -240 {lab=#net1}
N -160 -240 -160 -120 {lab=#net1}
N -190 -60 -190 20 {lab=#net2}
N -190 -60 -160 -60 {lab=#net2}
N 140 -90 220 -90 {lab=VOUT}
N -260 -160 -190 -160 {lab=#net3}
N -190 -160 -190 -100 {lab=#net3}
N -190 -100 -160 -100 {lab=#net3}
N -260 -80 -160 -80 {lab=#net4}
C {devices/vsource.sym} -290 -240 1 1 {value=1.8 name=VDD}
C {devices/vsource.sym} -190 50 0 0 {value=0 name=VSS}
C {devices/vsource.sym} -290 -160 1 0 {value=0.9 name=V2}
C {devices/gnd.sym} -190 80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -320 -160 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} -320 -240 1 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} 170 -310 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 360 -250 0 0 {name=s2
only_toplevel=true
value="

.dc V3 0.85 0.95 0.0001

.control
    run
    plot vout

    let gain = -deriv(vout)
    plot gain
    meas dc Adc MAX gain
.endc


"
}
C {devices/opin.sym} 220 -90 0 0 {name=p1 lab=VOUT}
C {devices/vsource.sym} -290 -80 1 0 {value=0.9 name=V3}
C {devices/gnd.sym} -320 -80 1 0 {name=l4 lab=GND}
C {opamp_single_stage.sym} -10 -90 0 0 {name=x1}
C {devices/code_shown.sym} 30 0 0 0 {name=s1
only_toplevel=true
value="
.op
.dc V3 0.895 0.905 0.0001

.control
run

let IDD = abs(i(VDD))
let PDC = 1.8 * IDD
print IDD
print PDC

.endc

"}
