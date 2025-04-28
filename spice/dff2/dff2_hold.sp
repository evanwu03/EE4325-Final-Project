$ ====== DFF HSPICE TESTBENCH =======
$ calculates thold

$transistor model
.include "/proj/cad/library/mosis/GF65_LPe/cmos10lpe_CDS_oa_dl064_11_20160415/models/YI-SM00030/Hspice/models/design.inc"

$source file
.include "dff2.pex.sp"

$ SPICE directives
.option post runlvl=5


$ ==== SUBCKT DEFINITION ====

xu GND! Q VDD! CLK R D dff2

.global VDD! GND!

$ ===== STIMULUS ====

VDD! VDD! GND! 1.2v
vCLK CLK GND! pulse(0v 1.2v 0ps 0ps 0ps 1000ps 2000ps)
vD D GND! pwl(0ns 0v 1000ps 0v 1075ps 1.2v 'd' 1.2v 'd+75ps' 0v)
vR R GND! pwl(0ns 1.2v 100ps 1.2v 175ps 0v 10ns 0v )
cout Q gnd! 30f
$transient analysis
$ .trans 10ps 10ns sweep d 1960ps 1950ps -0.1ps
.trans 10ps 3ns sweep d 2050ps 1705ps -5ps
.MEAS tclktoq TRIG v(CLK) VAL=0.6v TD=1ns RISE=1 TARG v(Q) VAL=0.6v RISE=1
.MEAS thold TRIG v(CLK) VAL=0.6v TD=1ns RISE=1  TARG v(D) VAL=0.6v FALL=1
.end


