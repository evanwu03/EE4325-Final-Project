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
.SUBCKT oai22 OUT GND! VDD! INA INB IND INC
** N=39 EP=7 IP=0 FDC=9
D0 GND! VDD! diodenwx AREA=9.34934e-12 perim=1.2258e-05 $X=-1401 $Y=1714 $D=0
M1 OUT INA 18 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.3944e-13 AS=9.296e-14 PD=1.058e-06 PS=1.452e-06 NRD=0.183333 NRS=0.182143 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.66e-07 sb=2.019e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-938 $Y=-117 $D=176
M2 18 INB OUT GND! nfet L=6.5e-08 W=5.6e-07 AD=1.2768e-13 AS=1.3944e-13 PD=1.016e-06 PS=1.058e-06 NRD=0.390476 NRS=0.705952 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=7.29e-07 sb=1.456e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-375 $Y=-117 $D=176
M3 GND! IND 18 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.6296e-13 AS=1.2768e-13 PD=1.142e-06 PS=1.016e-06 NRD=0.502976 NRS=0.42381 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.25e-06 sb=9.35e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=146 $Y=-117 $D=176
M4 18 INC GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=1.6128e-13 AS=1.6296e-13 PD=1.696e-06 PS=1.142e-06 NRD=0.181548 NRS=0.53631 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.897e-06 sb=2.88e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=793 $Y=-117 $D=176
M5 22 INA VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.37795e-13 AS=1.5853e-13 PD=1.453e-06 PS=2.242e-06 NRD=0.260733 NRS=0.104712 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.66e-07 sb=2.019e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=3.5335e-14 panw6=2.674e-14 panw7=0 panw8=2.73e-15 panw9=2.886e-14 panw10=7.2345e-14 $X=-938 $Y=2672 $D=189
M6 OUT INB 22 VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.1774e-13 AS=2.37795e-13 PD=1.411e-06 PS=1.453e-06 NRD=0.239791 NRS=0.260733 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=7.29e-07 sb=1.456e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=9.0935e-14 panw10=1.3442e-13 $X=-375 $Y=2672 $D=189
M7 23 IND OUT VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.77905e-13 AS=2.1774e-13 PD=1.537e-06 PS=1.411e-06 NRD=0.304712 NRS=0.237696 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.25e-06 sb=9.35e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=9.0935e-14 panw10=1.3442e-13 $X=146 $Y=2672 $D=189
M8 VDD! INC 23 VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.7504e-13 AS=2.77905e-13 PD=2.486e-06 PS=1.537e-06 NRD=0.197906 NRS=0.304712 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.897e-06 sb=2.88e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=6.2075e-14 panw8=2.73e-15 panw9=2.886e-14 panw10=7.2345e-14 $X=793 $Y=2672 $D=189
.ENDS
***************************************
