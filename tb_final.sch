v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 -110 -120 -110 {lab=GND}
N -140 -110 -140 -90 {lab=GND}
C {vsource.sym} -270 -180 0 0 {name=V3 value="dc 0.9 ac 1" savecurrent=false}
C {gnd.sym} -270 -150 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -270 -210 0 0 {name=p3 sig_type=std_logic lab=vplus}
C {vsource.sym} -270 -70 0 0 {name=V1 value=0.9 savecurrent=false}
C {gnd.sym} -270 -40 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -270 -100 0 0 {name=p6 sig_type=std_logic lab=vminus}
C {vsource.sym} -270 130 0 0 {name=V2 value=2.5 savecurrent=false}
C {gnd.sym} -270 160 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -270 100 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {isource.sym} -270 30 0 0 {name=I0 value=4.03u}
C {lab_pin.sym} -270 60 0 0 {name=p2 sig_type=std_logic lab=ibias}
C {gnd.sym} -140 -90 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -270 0 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -120 -130 0 0 {name=p5 sig_type=std_logic lab=ibias}
C {lab_pin.sym} -120 -150 0 0 {name=p7 sig_type=std_logic lab=vminus}
C {lab_pin.sym} -120 -170 0 0 {name=p8 sig_type=std_logic lab=vplus}
C {lab_pin.sym} -120 -190 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 180 -190 0 1 {name=p10 sig_type=std_logic lab=vo}
C {code.sym} -100 -40 0 0 {name=models only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {/mnt/c/Users/Valer/xschem drawings/iteration 4/final.sym} 30 -150 0 0 {name=x1}
C {code_shown.sym} 20 -40 0 0 {name=mag/phase only_toplevel=false value=
".control
save all
ac dec 100 1 1G
let mag = vdb(vo)
let phdeg = 180/pi*cph(v(vo))
meas ac gbw when mag=0 fall=1
meas ac ph_gbw find phdeg at=gbw
let pm = 180 + ph_gbw
print gbw ph_gbw pm
plot mag title 'Open-loop gain'
plot phdeg title 'Phase (Degrees)'
plot mag phdeg
write tb_final.raw mag phdeg
.endc"}
