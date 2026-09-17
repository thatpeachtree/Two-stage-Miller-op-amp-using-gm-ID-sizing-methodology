v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 50 -140 70 -140 {lab=GND}
N 50 -140 50 -120 {lab=GND}
N 370 -220 440 -220 {lab=vo}
N 10 -260 10 -180 {lab=vo}
N 10 -260 380 -260 {lab=vo}
N 380 -260 380 -220 {lab=vo}
N 10 -180 70 -180 {lab=vo}
C {vsource.sym} -200 -80 0 0 {name=V3 value="pulse(0.9 1.7 1n 10p 10p 1u 2u)" savecurrent=false}
C {gnd.sym} -200 -50 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -200 -110 0 0 {name=p3 sig_type=std_logic lab=vplus}
C {vsource.sym} -200 20 0 0 {name=V2 value=2.5 savecurrent=false}
C {gnd.sym} -200 50 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -200 -10 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {isource.sym} -200 -180 0 0 {name=I0 value=4.03u}
C {lab_pin.sym} -200 -150 0 0 {name=p2 sig_type=std_logic lab=ibias}
C {gnd.sym} 50 -120 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -200 -210 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 70 -160 0 0 {name=p5 sig_type=std_logic lab=ibias}
C {lab_pin.sym} 70 -200 0 0 {name=p8 sig_type=std_logic lab=vplus}
C {lab_pin.sym} 70 -220 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 440 -220 0 1 {name=p10 sig_type=std_logic lab=vo}
C {code.sym} -20 -40 0 0 {name=models only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {code_shown.sym} 140 -40 0 0 {name=slewrate only_toplevel=false value=
".control
tran 1n 4u
meas tran tr10 when v(vo)=0.98 rise=1
meas tran tr90 when v(vo)=1.62 rise=1
meas tran tf90 when v(vo)=1.62 fall=1
meas tran tf10 when v(vo)=0.98 fall=1
let sr_rise = 0.64/(tr90-tr10)
let sr_fall = 0.64/(tf10-tf90)
print sr_rise/1e6 sr_fall/1e6
plot v(vplus) v(vo)
.endc"}
C {/mnt/c/Users/Valer/xschem drawings/iteration 4/final.sym} 220 -180 0 0 {name=x1}
