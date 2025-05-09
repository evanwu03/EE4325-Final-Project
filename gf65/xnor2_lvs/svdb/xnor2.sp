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
.SUBCKT xnor2 GND! OUT VDD! INA INB
** N=36 EP=5 IP=0 FDC=11
D0 GND! VDD! diodenwx AREA=9.34934e-12 perim=1.2258e-05 $X=-1210 $Y=1917 $D=0
M1 15 INA 14 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.386e-13 AS=9.296e-14 PD=1.055e-06 PS=1.452e-06 NRD=0.441964 NRS=0.178571 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.66e-07 sb=2.038e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-777 $Y=86 $D=176
M2 GND! INB 15 GND! nfet L=6.5e-08 W=5.6e-07 AD=9.772e-14 AS=1.386e-13 PD=9.09e-07 PS=1.055e-06 NRD=0.178571 NRS=0.441964 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=7.26e-07 sb=1.478e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-217 $Y=86 $D=176
M3 17 14 GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=9.1e-14 AS=9.772e-14 PD=8.85e-07 PS=9.09e-07 NRD=0.394643 NRS=0.444643 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.14e-06 sb=1.064e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=197 $Y=86 $D=176
M4 OUT INB 17 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.232e-13 AS=9.1e-14 PD=1e-06 PS=8.85e-07 NRD=0.605357 NRS=0.185714 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.53e-06 sb=6.74e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=587 $Y=86 $D=176
M5 17 INA OUT GND! nfet L=6.5e-08 W=5.6e-07 AD=9.464e-14 AS=1.232e-13 PD=1.458e-06 PS=1e-06 NRD=0.183929 NRS=0.180357 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=2.035e-06 sb=1.69e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=1092 $Y=86 $D=176
M6 14 INA VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.36362e-13 AS=1.5853e-13 PD=1.45e-06 PS=2.242e-06 NRD=0.127749 NRS=0.106806 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.66e-07 sb=2.038e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=1.6235e-14 panw5=4.584e-14 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.886e-14 panw10=7.2345e-14 $X=-777 $Y=2875 $D=189
M7 VDD! INB 14 VDD! pfet L=6.5e-08 W=9.55e-07 AD=1.66647e-13 AS=2.36362e-13 PD=1.304e-06 PS=1.45e-06 NRD=0.12356 NRS=0.390576 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=7.26e-07 sb=1.478e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=9.415e-15 panw9=8.425e-14 panw10=1.3442e-13 $X=-217 $Y=2875 $D=189
M8 OUT 14 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=1.55187e-13 AS=1.66647e-13 PD=1.28e-06 PS=1.304e-06 NRD=0.230366 NRS=0.241885 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.14e-06 sb=1.064e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=4.032e-14 panw10=1.85035e-13 $X=197 $Y=2875 $D=189
M9 20 INB OUT VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.101e-13 AS=1.55187e-13 PD=1.395e-06 PS=1.28e-06 NRD=0.230366 NRS=0.109948 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.53e-06 sb=6.74e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=4.64e-15 panw9=8.9025e-14 panw10=1.3442e-13 $X=587 $Y=2875 $D=189
M10 VDD! INA 20 VDD! pfet L=6.5e-08 W=9.55e-07 AD=1.61395e-13 AS=2.101e-13 PD=2.248e-06 PS=1.395e-06 NRD=0.104712 NRS=0.230366 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=2.035e-06 sb=1.69e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=6.685e-15 panw6=5.539e-14 panw7=0 panw8=2.73e-15 panw9=2.886e-14 panw10=7.2345e-14 $X=1092 $Y=2875 $D=189
.ENDS
***************************************
