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
D0 GND! VDD! diodenwx AREA=3.5464e-12 perim=8.056e-06 $X=-722 $Y=583 $D=0
M1 OUT INA GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=2.1616e-13 AS=1.232e-13 PD=1.892e-06 PS=1.56e-06 NRD=0.576786 NRS=0.283929 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=2.2e-07 sb=3.86e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=1.1505e-14 panw9=2.4895e-14 panw10=0 $X=-196 $Y=-800 $D=176
M2 OUT INA VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=3.6863e-13 AS=2.101e-13 PD=2.682e-06 PS=2.35e-06 NRD=0.33822 NRS=0.164398 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=2.2e-07 sb=3.86e-07 sd=0 panw1=4.615e-15 panw2=3.25e-15 panw3=3.25e-15 panw4=3.25e-15 panw5=3.25e-15 panw6=6.8575e-14 panw7=7.5075e-14 panw8=1.3e-14 panw9=1.196e-14 panw10=2.964e-14 $X=-196 $Y=812 $D=189
.ENDS
***************************************
