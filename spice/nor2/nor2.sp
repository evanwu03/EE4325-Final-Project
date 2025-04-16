$ ====== NOR2  HSPICE TESTBENCH =======

$transistor model
.include "/proj/cad/library/mosis/GF65_LPe/cmos10lpe_CDS_oa_dl064_11_20160415/models/YI-SM00030/Hspice/models/design.inc"

$source file
.include "nor2.pex.sp"

$ SPICE directives
.option post runlvl=5


$ ==== SUBCKT DEFINITION ====

xu GND! OUT VDD! INA INB nor2


$ ===== STIMULUS ====

VDD VDD! GND! 1.2v
VA INA GND! PULSE(0 1.2v 5ns 37.5ps 37.5ps 100ns 200ns)
VB INB GND! PULSE(1.2v 0 5ns 37.5ps 37.5ps 50ns 100ns)
cout OUT GND! 30f

$transient analysis
.tr 100ps 400ns
.op

.measure tran trise trig v(OUT) val=0.6v fall=1 targ v(OUT) val=0.6v rise=1 $measure tlh at
0.6v
.measure tran tfall trig v(OUT) val=0.6v rise=1 targ v(OUT) val=0.6v fall=1 $measure tpl at
0.6v
.measure tavg param = '(trise+tfall)/2' $calculate average delay
.measure tdiff param='abs(trise-tfall)' $calculate delay difference
.measure delay param='max(trise,tfall)' $calculate worst case delay

.end
~

