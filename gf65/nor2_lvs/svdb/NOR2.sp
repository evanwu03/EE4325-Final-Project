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
.SUBCKT NOR2 GND! OUT VDD! A B
** N=24 EP=5 IP=0 FDC=5
D0 GND! VDD! diodenwx AREA=6.79952e-12 perim=1.0698e-05 $X=-1149 $Y=254 $D=0
M1 OUT A GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=2.1644e-13 AS=9.296e-14 PD=1.333e-06 PS=1.452e-06 NRD=0.707143 NRS=0.183929 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.66e-07 sb=1.265e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-700 $Y=-1577 $D=176
M2 GND! B OUT GND! nfet L=6.5e-08 W=5.6e-07 AD=2.3912e-13 AS=2.1644e-13 PD=1.974e-06 PS=1.333e-06 NRD=0.624405 NRS=0.673214 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.004e-06 sb=4.27e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=138 $Y=-1577 $D=176
M3 14 A VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=3.69107e-13 AS=1.5853e-13 PD=1.728e-06 PS=2.242e-06 NRD=0.404712 NRS=0.109948 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.66e-07 sb=1.265e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=9.55e-16 panw5=4.775e-14 panw6=1.337e-14 panw7=0 panw8=2.73e-15 panw9=2.886e-14 panw10=1.3442e-13 $X=-700 $Y=1212 $D=189
M4 OUT B 14 VDD! pfet L=6.5e-08 W=9.55e-07 AD=4.07785e-13 AS=3.69107e-13 PD=2.764e-06 PS=1.728e-06 NRD=0.382199 NRS=0.404712 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.004e-06 sb=4.27e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=6.2075e-14 panw8=2.73e-15 panw9=9.0935e-14 panw10=7.2345e-14 $X=138 $Y=1212 $D=189
.ENDS
***************************************
