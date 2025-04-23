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
.SUBCKT nfettw G S D B tw sx
.ENDS
***************************************
.SUBCKT lvtnfettw G S D B tw sx
.ENDS
***************************************
.SUBCKT hvtnfettw G S D B tw sx
.ENDS
***************************************
.SUBCKT dgvnfettw G S D B tw sx
.ENDS
***************************************
.SUBCKT dgnfettw G S D B tw sx
.ENDS
***************************************
.SUBCKT dgxnfettw G S D B tw sx
.ENDS
***************************************
.SUBCKT nfettw_rf G S D B tw sx
.ENDS
***************************************
.SUBCKT lvtnfettw_rf G S D B tw sx
.ENDS
***************************************
.SUBCKT hvtnfettw_rf G S D B tw sx
.ENDS
***************************************
.SUBCKT dgvnfettw_rf G S D B tw sx
.ENDS
***************************************
.SUBCKT dgnfettw_rf G S D B tw sx
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
.SUBCKT dff Q R D CLK GND! VDD!
** N=22 EP=6 IP=0 FDC=30
M0 GND! 2 Q GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-1661 $Y=-2391 $D=168
M1 4 R GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-1111 $Y=-2391 $D=168
M2 GND! 2 4 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=1 pccrit=0 $X=-548 $Y=-2391 $D=168
M3 13 5 GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-28 $Y=-2391 $D=168
M4 2 6 13 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=524 $Y=-2391 $D=168
M5 14 6 2 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=1046 $Y=-2391 $D=168
M6 GND! 4 14 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=1569 $Y=-2391 $D=168
M7 15 D GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=2089 $Y=-2391 $D=168
M8 9 6 15 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=2609 $Y=-2391 $D=168
M9 16 6 9 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=3130 $Y=-2391 $D=168
M10 GND! 5 16 GND! nfet L=6.4e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=1 pccrit=0 $X=3421 $Y=-2391 $D=168
M11 5 9 GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=3941 $Y=-2391 $D=168
M12 GND! R 5 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=4460 $Y=-2391 $D=168
M13 GND! 7 6 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=1 pccrit=0 $X=4990 $Y=-2391 $D=168
M14 7 CLK GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=5504 $Y=-2391 $D=168
M15 VDD! 2 Q VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-1661 $Y=398 $D=181
M16 17 R 4 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-1111 $Y=398 $D=181
M17 VDD! 2 17 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=1 pccrit=0 $X=-548 $Y=398 $D=181
M18 18 5 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-28 $Y=398 $D=181
M19 2 7 18 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=524 $Y=398 $D=181
M20 19 7 2 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=1046 $Y=398 $D=181
M21 VDD! 4 19 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=1569 $Y=398 $D=181
M22 20 D VDD! VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=2089 $Y=398 $D=181
M23 9 7 20 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=2609 $Y=398 $D=181
M24 21 7 9 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=3130 $Y=398 $D=181
M25 VDD! 5 21 VDD! pfet L=6.4e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=3421 $Y=398 $D=181
M26 22 9 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=1 pccrit=0 $X=3941 $Y=398 $D=181
M27 5 R 22 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=4460 $Y=398 $D=181
M28 VDD! 7 6 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=4990 $Y=398 $D=181
M29 7 CLK VDD! VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=5504 $Y=398 $D=181
.ENDS
***************************************
