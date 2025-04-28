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
.SUBCKT dff2 CLK R D VDD! GND! Q
** N=22 EP=6 IP=0 FDC=30
M0 GND! CLK 1 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-3969 $Y=-952 $D=168
M1 3 1 GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-3455 $Y=-952 $D=168
M2 5 R GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-2924 $Y=-952 $D=168
M3 GND! 7 5 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-2361 $Y=-952 $D=168
M4 13 D GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-1841 $Y=-952 $D=168
M5 7 1 13 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-1289 $Y=-952 $D=168
M6 14 3 7 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-767 $Y=-952 $D=168
M7 GND! 5 14 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=-244 $Y=-952 $D=168
M8 15 5 GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=276 $Y=-952 $D=168
M9 8 3 15 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=796 $Y=-952 $D=168
M10 16 1 8 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=1317 $Y=-952 $D=168
M11 GND! 9 16 GND! nfet L=6.4e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=1 pccrit=0 $X=1608 $Y=-952 $D=168
M12 9 8 GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=2128 $Y=-952 $D=168
M13 GND! R 9 GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=2647 $Y=-952 $D=168
M14 Q 8 GND! GND! nfet L=6.5e-08 W=5.6e-07 m=1 nf=1 mpl=1 par=1 ptwell=0 cnr_switch=0 pccrit=0 $X=3204 $Y=-952 $D=168
M15 VDD! CLK 1 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-3969 $Y=1837 $D=181
M16 3 1 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-3455 $Y=1837 $D=181
M17 17 R 5 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-2924 $Y=1837 $D=181
M18 VDD! 7 17 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-2361 $Y=1837 $D=181
M19 18 D VDD! VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-1841 $Y=1837 $D=181
M20 7 3 18 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-1289 $Y=1837 $D=181
M21 19 1 7 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-767 $Y=1837 $D=181
M22 VDD! 5 19 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=-244 $Y=1837 $D=181
M23 20 5 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=276 $Y=1837 $D=181
M24 8 1 20 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=796 $Y=1837 $D=181
M25 21 3 8 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=1317 $Y=1837 $D=181
M26 VDD! 9 21 VDD! pfet L=6.4e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=1608 $Y=1837 $D=181
M27 22 8 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=2 pccrit=0 $X=2128 $Y=1837 $D=181
M28 9 R 22 VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=2647 $Y=1837 $D=181
M29 Q 8 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 m=1 nf=1 mpl=1 par=1 ptwell=1 cnr_switch=0 pccrit=0 $X=3204 $Y=1837 $D=181
.ENDS
***************************************
