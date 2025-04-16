* SPICE NETLIST
***************************************

.SUBCKT efuse in out
.ENDS
***************************************
.SUBCKT subc SUBCON sub
.ENDS
***************************************
.SUBCKT sblkndres IN OUT SUB
.ENDS
***************************************
.SUBCKT sblkpdres IN OUT SUB
.ENDS
***************************************
.SUBCKT esdscr_dw pd nw sx nd tds1 tds2
.ENDS
***************************************
.SUBCKT esdscr_tw pd nw pw nd tds1 tds2
.ENDS
***************************************
.SUBCKT esdscr_dw_rf pd nw sx nd tds1 tds2
.ENDS
***************************************
.SUBCKT esdscr_tw_rf pd nw pw nd tds1 tds2
.ENDS
***************************************
.SUBCKT npolyf_s PLUS MINUS SUB
.ENDS
***************************************
.SUBCKT npolyf_u PLUS MINUS SUB
.ENDS
***************************************
.SUBCKT ppolyf_s PLUS MINUS SUB
.ENDS
***************************************
.SUBCKT nplus_s PLUS MINUS SUB
.ENDS
***************************************
.SUBCKT pplus_s PLUS MINUS SUB
.ENDS
***************************************
.SUBCKT pplus_u PLUS MINUS SUB
.ENDS
***************************************
.SUBCKT nwella PLUS MINUS SUB
.ENDS
***************************************
.SUBCKT indp out in gnd
.ENDS
***************************************
.SUBCKT symindp outpr outse ct BULK
.ENDS
***************************************
.SUBCKT bondpad in gp sub
.ENDS
***************************************
.SUBCKT singlecpw va vb vshield
.ENDS
***************************************
.SUBCKT coupledcpw va1 va2 vb1 vb2 vshield
.ENDS
***************************************
.SUBCKT singlewire va vb vshield
.ENDS
***************************************
.SUBCKT coupledwires va1 va2 vb1 vb2 vshield
.ENDS
***************************************
.SUBCKT rfline in out gnd
.ENDS
***************************************
.SUBCKT nand2 OUT GND! VDD! INA INB
** N=24 EP=5 IP=0 FDC=5
D0 GND! VDD! diodenwx AREA=5.67424e-12 perim=9.616e-06 $X=-1065 $Y=-468 $D=0
M1 12 INA OUT GND! nfet L=6.5e-08 W=5.6e-07 AD=2.1644e-13 AS=9.296e-14 PD=1.333e-06 PS=1.452e-06 NRD=0.690179 NRS=0.183929 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.66e-07 sb=1.267e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=1.1505e-14 panw9=2.4895e-14 panw10=0 $X=-616 $Y=-1851 $D=176
M2 GND! INB 12 GND! nfet L=6.5e-08 W=5.6e-07 AD=2.4024e-13 AS=2.1644e-13 PD=1.978e-06 PS=1.333e-06 NRD=0.624405 NRS=0.690179 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.004e-06 sb=4.29e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=1.1505e-14 panw9=2.4895e-14 panw10=0 $X=222 $Y=-1851 $D=176
M3 VDD! INA OUT VDD! pfet L=6.5e-08 W=9.55e-07 AD=3.69107e-13 AS=1.5853e-13 PD=1.728e-06 PS=2.242e-06 NRD=0.238743 NRS=0.110995 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.66e-07 sb=1.267e-06 sd=0 panw1=4.615e-15 panw2=3.25e-15 panw3=3.25e-15 panw4=4.205e-15 panw5=5.1e-14 panw6=1.987e-14 panw7=1.3e-14 panw8=1.3e-14 panw9=1.196e-14 panw10=9.1715e-14 $X=-616 $Y=-239 $D=189
M4 OUT INB VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=4.09695e-13 AS=3.69107e-13 PD=2.768e-06 PS=1.728e-06 NRD=0.376963 NRS=0.570681 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.004e-06 sb=4.29e-07 sd=0 panw1=4.615e-15 panw2=3.25e-15 panw3=3.25e-15 panw4=3.25e-15 panw5=3.25e-15 panw6=6.5e-15 panw7=7.5075e-14 panw8=1.3e-14 panw9=7.4035e-14 panw10=2.964e-14 $X=222 $Y=-239 $D=189
.ENDS
***************************************
