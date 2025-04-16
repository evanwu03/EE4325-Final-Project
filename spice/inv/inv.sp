
$ ====== INV HSPICE TESTBENCH =======

$transistor model
.include "/proj/cad/library/mosis/GF65_LPe/cmos10lpe_CDS_oa_dl064_11_20160415/models/YI-SM00030/Hspice/models/design.inc"

$source file 
.include "inv.pex.sp"

$ SPICE directives 
.option post runlvl=5


$ ==== SUBCKT DEFINITION ====

xu GND! OUT VDD! INA inv



$ ===== STIMULUS ==== 

vdd VDD! GND! 1.2v  
vin INA GND! pwl(0ns 1.2v 1ns 1.2v 1.05ns 0v 6ns 0v 6.05ns 1.2v 12ns 1.2v)
cout OUT GND! 30f


$transient analysis
.tr 100ps 12ns
.measure tran trise trig v(INA) val=0.6v fall=1 targ v(OUT) val=0.6v rise=1 $measure tlh at
0.6v
.measure tran tfall trig v(INA) val=0.6v rise=1 targ v(OUT) val=0.6v fall=1 $measure tpl at
0.6v
.measure tavg param = '(trise+tfall)/2' $calculate average delay
.measure tdiff param='abs(trise-tfall)' $calculate delay difference
.measure delay param='max(trise,tfall)' $calculate worst case delay

.end
