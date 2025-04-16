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
.SUBCKT nand3 OUT GND! VDD! INA INB INC
** N=31 EP=6 IP=0 FDC=7
D0 GND! VDD! diodenwx AREA=7.0928e-12 perim=1.0656e-05 $X=-1224 $Y=75 $D=0
M1 15 INA OUT GND! nfet L=6.5e-08 W=5.6e-07 AD=2.0524e-13 AS=9.296e-14 PD=1.293e-06 PS=1.452e-06 NRD=0.654464 NRS=0.183929 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.66e-07 sb=1.816e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=1.1505e-14 panw9=2.4895e-14 panw10=0 $X=-757 $Y=-1308 $D=176
M2 16 INB 15 GND! nfet L=6.5e-08 W=5.6e-07 AD=2.0132e-13 AS=2.0524e-13 PD=1.279e-06 PS=1.293e-06 NRD=0.641964 NRS=0.654464 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=9.64e-07 sb=1.018e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=1.1505e-14 panw9=2.4895e-14 panw10=0 $X=41 $Y=-1308 $D=176
M3 GND! INC 16 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.3104e-13 AS=2.0132e-13 PD=1.588e-06 PS=1.279e-06 NRD=0.217262 NRS=0.641964 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.748e-06 sb=2.34e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=1.1505e-14 panw9=2.4895e-14 panw10=0 $X=825 $Y=-1308 $D=176
M4 OUT INA VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=3.50007e-13 AS=1.5853e-13 PD=1.688e-06 PS=2.242e-06 NRD=0.238743 NRS=0.110995 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.66e-07 sb=1.756e-06 sd=0 panw1=4.615e-15 panw2=3.25e-15 panw3=3.25e-15 panw4=3.25e-15 panw5=3.4765e-14 panw6=3.706e-14 panw7=1.3e-14 panw8=1.3e-14 panw9=1.196e-14 panw10=2.964e-14 $X=-757 $Y=304 $D=189
M5 VDD! INB OUT VDD! pfet L=6.5e-08 W=9.55e-07 AD=3.43322e-13 AS=3.50007e-13 PD=1.674e-06 PS=1.688e-06 NRD=0.427225 NRS=0.528796 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=9.64e-07 sb=9.58e-07 sd=0 panw1=4.615e-15 panw2=3.25e-15 panw3=3.25e-15 panw4=3.25e-15 panw5=3.25e-15 panw6=6.5e-15 panw7=1.3e-14 panw8=1.3e-14 panw9=1.3611e-13 panw10=2.964e-14 $X=41 $Y=304 $D=189
M6 OUT INC VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=1.6617e-13 AS=3.43322e-13 PD=2.258e-06 PS=1.674e-06 NRD=0.118325 NRS=0.325654 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.748e-06 sb=1.74e-07 sd=0 panw1=4.615e-15 panw2=3.25e-15 panw3=3.25e-15 panw4=3.25e-15 panw5=1.662e-14 panw6=5.5205e-14 panw7=1.3e-14 panw8=1.3e-14 panw9=1.196e-14 panw10=2.964e-14 $X=825 $Y=304 $D=189
.ENDS
***************************************
