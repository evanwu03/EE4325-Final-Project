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
.SUBCKT inv GND! OUT VDD! INA
** N=17 EP=4 IP=0 FDC=3
D0 GND! VDD! diodenwx AREA=4.2497e-12 perim=9.138e-06 $X=-618 $Y=343 $D=0
M1 OUT INA GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=2.1616e-13 AS=1.232e-13 PD=1.892e-06 PS=1.56e-06 NRD=0.576786 NRS=0.283929 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=2.2e-07 sb=3.86e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-92 $Y=-1488 $D=176
M2 OUT INA VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=3.6863e-13 AS=2.101e-13 PD=2.682e-06 PS=2.35e-06 NRD=0.33822 NRS=0.164398 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=2.2e-07 sb=3.86e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=6.2075e-14 panw7=6.2075e-14 panw8=2.73e-15 panw9=2.886e-14 panw10=7.2345e-14 $X=-92 $Y=1301 $D=189
.ENDS
***************************************
