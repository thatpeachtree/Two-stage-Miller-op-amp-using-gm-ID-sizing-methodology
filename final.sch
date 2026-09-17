v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 30 -140 60 {lab=#net1}
N -140 60 70 60 {lab=#net1}
N 70 30 70 60 {lab=#net1}
N -140 -130 -140 -30 {lab=#net2}
N 70 -130 70 -30 {lab=#net3}
N -100 -160 30 -160 {lab=#net2}
N -50 -160 -50 -110 {lab=#net2}
N -140 -110 -50 -110 {lab=#net2}
N -140 -250 -140 -190 {lab=VDD}
N -140 -250 70 -250 {lab=VDD}
N 70 -250 70 -190 {lab=VDD}
N -40 60 -40 90 {lab=#net1}
N -310 120 -80 120 {lab=IBIAS}
N -350 150 -350 180 {lab=VSS}
N -350 180 -40 180 {lab=VSS}
N -40 150 -40 180 {lab=VSS}
N 350 -90 440 -90 {lab=VOUT}
N 110 0 140 0 {lab=VPLUS}
N -350 70 -290 70 {lab=IBIAS}
N -290 70 -290 120 {lab=IBIAS}
N -350 -250 -140 -250 {lab=VDD}
N 350 150 350 180 {lab=VSS}
N -40 180 350 180 {lab=VSS}
N 60 120 310 120 {lab=IBIAS}
N 60 120 60 160 {lab=IBIAS}
N -110 160 60 160 {lab=IBIAS}
N -110 120 -110 160 {lab=IBIAS}
N 350 -120 350 90 {lab=VOUT}
N 350 -250 350 -180 {lab=VDD}
N 70 -250 350 -250 {lab=VDD}
N 230 -150 310 -150 {lab=#net3}
N 250 -90 260 -90 {lab=#net4}
N 180 -150 230 -150 {lab=#net3}
N 260 -90 270 -90 {lab=#net4}
N 330 -90 350 -90 {lab=VOUT}
N 180 -150 180 -90 {lab=#net3}
N 70 -90 190 -90 {lab=#net3}
N -350 10 -350 90 {lab=IBIAS}
C {capa.sym} 300 -90 1 0 {name=Cc
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 420 -30 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -60 120 0 0 {name=M5
W=3.22
L=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -330 120 0 1 {name=M8
W=0.8
L=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -160 0 0 0 {name=M1
W=45
L=1.5
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 90 0 0 1 {name=M2
W=45
L=1.5
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 50 -160 0 0 {name=M4
W=4.03
L=1.25
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -120 -160 0 1 {name=M3
W=4.03
L=1.25
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 330 120 0 0 {name=M7
W=12.8
L=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 330 -150 0 0 {name=M6
W=53
L=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {capa.sym} 420 -60 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 220 -90 1 0 {name=R1
value=10.34k
footprint=1206
device=resistor
m=1}
C {ipin.sym} -350 -250 0 0 {name=p1 lab=VDD}
C {ipin.sym} -180 0 0 0 {name=p2 lab=VMINUS}
C {ipin.sym} 140 0 0 1 {name=p4 lab=VPLUS}
C {ipin.sym} -350 10 0 0 {name=p3 lab=IBIAS}
C {opin.sym} 440 -90 0 0 {name=p5 lab=VOUT}
C {ipin.sym} -350 180 0 0 {name=p6 lab=VSS}
