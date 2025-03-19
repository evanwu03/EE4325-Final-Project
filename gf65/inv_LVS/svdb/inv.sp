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
.SUBCKT inv GND! OUT VDD! IN
** N=17 EP=4 IP=0 FDC=3
D0 GND! VDD! diodenwx AREA=2.34264e-12 perim=6.212e-06 $X=2 $Y=1617 $D=0
M1 OUT IN GND! GND! nfet L=6.4e-08 W=3.5e-07 AD=1.113e-13 AS=1.0745e-13 PD=1.336e-06 PS=1.314e-06 NRD=0.285714 NRS=0.607143 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=3.07e-07 sb=3.18e-07 sd=0 panw1=7.744e-15 panw2=3.2e-15 panw3=3.2e-15 panw4=3.2e-15 panw5=3.2e-15 panw6=1.856e-15 panw7=0 panw8=0 panw9=0 panw10=0 $X=649 $Y=1088 $D=176
M2 OUT IN VDD! VDD! pfet L=6.4e-08 W=8.4e-07 AD=2.772e-13 AS=2.4864e-13 PD=2.34e-06 PS=2.272e-06 NRD=0.120833 NRS=0.23869 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=2.96e-07 sb=3.3e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=1.536e-15 panw5=3.2e-15 panw6=2.724e-14 panw7=1.1548e-13 panw8=2.56e-14 panw9=4.1984e-14 panw10=0 $X=649 $Y=2043 $D=189
.ENDS
***************************************
