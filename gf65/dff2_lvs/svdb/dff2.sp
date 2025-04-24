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
.SUBCKT dff2 GND! Q VDD! CLK R D
** N=99 EP=6 IP=0 FDC=31
D0 GND! VDD! diodenwx AREA=2.75309e-11 perim=2.3258e-05 $X=-4427 $Y=879 $D=0
M1 GND! CLK 40 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.2572e-13 AS=9.632e-14 PD=1.009e-06 PS=1.464e-06 NRD=0.601786 NRS=0.185714 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.72e-07 sb=6.83e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-3969 $Y=-952 $D=176
M2 42 40 GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=9.464e-14 AS=1.2572e-13 PD=1.458e-06 PS=1.009e-06 NRD=0.183929 NRS=0.2 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=6.86e-07 sb=1.69e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-3455 $Y=-952 $D=176
M3 43 R GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=1.3944e-13 AS=9.296e-14 PD=1.058e-06 PS=1.452e-06 NRD=0.375 NRS=0.183929 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.66e-07 sb=5e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-2924 $Y=-952 $D=176
M4 GND! 45 43 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.274e-13 AS=1.3944e-13 PD=1.015e-06 PS=1.058e-06 NRD=0.226786 NRS=0.514286 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=7.29e-07 sb=5e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-2361 $Y=-952 $D=176
M5 44 D GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=1.3636e-13 AS=1.274e-13 PD=1.047e-06 PS=1.015e-06 NRD=0.434821 NRS=0.585714 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.249e-06 sb=4.651e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-1841 $Y=-952 $D=176
M6 45 40 44 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.2796e-13 AS=1.3636e-13 PD=1.017e-06 PS=1.047e-06 NRD=0.407143 NRS=0.434821 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.801e-06 sb=4.099e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-1289 $Y=-952 $D=176
M7 46 42 45 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.2824e-13 AS=1.2796e-13 PD=1.018e-06 PS=1.017e-06 NRD=0.408929 NRS=0.408929 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=2.323e-06 sb=3.577e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-767 $Y=-952 $D=176
M8 GND! 43 46 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.274e-13 AS=1.2824e-13 PD=1.015e-06 PS=1.018e-06 NRD=0.467857 NRS=0.408929 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=2.846e-06 sb=3.054e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=-244 $Y=-952 $D=176
M9 47 43 GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=1.274e-13 AS=1.274e-13 PD=1.015e-06 PS=1.015e-06 NRD=0.40625 NRS=0.344643 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=3.366e-06 sb=2.534e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=276 $Y=-952 $D=176
M10 48 42 47 GND! nfet L=6.5e-08 W=5.6e-07 AD=1.2768e-13 AS=1.274e-13 PD=1.016e-06 PS=1.015e-06 NRD=0.433929 NRS=0.40625 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=3.886e-06 sb=2.014e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=796 $Y=-952 $D=176
M11 49 40 48 GND! nfet L=6.5e-08 W=5.6e-07 AD=6.328e-14 AS=1.2768e-13 PD=7.86e-07 PS=1.016e-06 NRD=0.201786 NRS=0.380357 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=4.407e-06 sb=1.493e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=1317 $Y=-952 $D=176
M12 GND! 50 49 GND! nfet L=6.4e-08 W=5.6e-07 AD=1.2768e-13 AS=6.328e-14 PD=1.016e-06 PS=7.86e-07 NRD=0.408929 NRS=0.201786 m=1 nf=1 cnr_switch=1 pccrit=0 par=1 ptwell=0 sa=4.698e-06 sb=1.203e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.256e-15 panw10=2.7584e-14 $X=1608 $Y=-952 $D=176
M13 50 48 GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=1.2712e-13 AS=1.2768e-13 PD=1.014e-06 PS=1.016e-06 NRD=0.371429 NRS=0.405357 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=5e-06 sb=6.82e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=2128 $Y=-952 $D=176
M14 GND! R 50 GND! nfet L=6.5e-08 W=5.6e-07 AD=9.128e-14 AS=1.2712e-13 PD=1.446e-06 PS=1.014e-06 NRD=0.180357 NRS=0.439286 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=5e-06 sb=1.63e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=2647 $Y=-952 $D=176
M15 Q 48 GND! GND! nfet L=6.5e-08 W=5.6e-07 AD=1.4336e-13 AS=1.1144e-13 PD=1.632e-06 PS=1.518e-06 NRD=0.348214 NRS=0.180357 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=0 sa=1.99e-07 sb=2.56e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=0 panw9=8.385e-15 panw10=2.8015e-14 $X=3204 $Y=-952 $D=176
M16 VDD! CLK 40 VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.14397e-13 AS=1.6426e-13 PD=1.404e-06 PS=2.254e-06 NRD=0.363351 NRS=0.108901 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.72e-07 sb=6.83e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=4.011e-14 panw6=2.1965e-14 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=7.2345e-14 $X=-3969 $Y=1837 $D=189
M17 42 40 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=1.61395e-13 AS=2.14397e-13 PD=2.248e-06 PS=1.404e-06 NRD=0.105759 NRS=0.106806 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=6.86e-07 sb=1.69e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.947e-14 panw9=6.1595e-14 panw10=7.2345e-14 $X=-3455 $Y=1837 $D=189
M18 53 R 43 VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.37795e-13 AS=1.5853e-13 PD=1.453e-06 PS=2.242e-06 NRD=0.260733 NRS=0.10555 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.66e-07 sb=5e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=1.3442e-13 $X=-2924 $Y=1837 $D=189
M19 VDD! 45 53 VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.17262e-13 AS=2.37795e-13 PD=1.41e-06 PS=1.453e-06 NRD=0.232461 NRS=0.260733 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=7.29e-07 sb=5e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=7.2345e-14 $X=-2361 $Y=1837 $D=189
M20 54 D VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.32542e-13 AS=2.17262e-13 PD=1.442e-06 PS=1.41e-06 NRD=0.254974 NRS=0.243979 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.249e-06 sb=4.651e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=7.2345e-14 $X=-1841 $Y=1837 $D=189
M21 45 42 54 VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.18217e-13 AS=2.32542e-13 PD=1.412e-06 PS=1.442e-06 NRD=0.208377 NRS=0.254974 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.801e-06 sb=4.099e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=7.2345e-14 $X=-1289 $Y=1837 $D=189
M22 55 40 45 VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.18695e-13 AS=2.18217e-13 PD=1.413e-06 PS=1.412e-06 NRD=0.239791 NRS=0.270157 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=2.323e-06 sb=3.577e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=7.2345e-14 $X=-767 $Y=1837 $D=189
M23 VDD! 43 55 VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.17262e-13 AS=2.18695e-13 PD=1.41e-06 PS=1.413e-06 NRD=0.248168 NRS=0.239791 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=2.846e-06 sb=3.054e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=7.2345e-14 $X=-244 $Y=1837 $D=189
M24 56 43 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.17262e-13 AS=2.17262e-13 PD=1.41e-06 PS=1.41e-06 NRD=0.23822 NRS=0.228272 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=3.366e-06 sb=2.534e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=7.2345e-14 $X=276 $Y=1837 $D=189
M25 48 40 56 VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.1774e-13 AS=2.17262e-13 PD=1.411e-06 PS=1.41e-06 NRD=0.224084 NRS=0.23822 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=3.886e-06 sb=2.014e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=7.2345e-14 $X=796 $Y=1837 $D=189
M26 57 42 48 VDD! pfet L=6.5e-08 W=9.55e-07 AD=1.07915e-13 AS=2.1774e-13 PD=1.181e-06 PS=1.411e-06 NRD=0.118325 NRS=0.253403 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=4.407e-06 sb=1.493e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=7.2345e-14 $X=1317 $Y=1837 $D=189
M27 VDD! 50 57 VDD! pfet L=6.4e-08 W=9.55e-07 AD=2.1774e-13 AS=1.07915e-13 PD=1.411e-06 PS=1.181e-06 NRD=0.224084 NRS=0.118325 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=4.698e-06 sb=1.203e-06 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.688e-15 panw9=2.5856e-14 panw10=7.1232e-14 $X=1608 $Y=1837 $D=189
M28 58 48 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.16785e-13 AS=2.1774e-13 PD=1.409e-06 PS=1.411e-06 NRD=0.237696 NRS=0.253403 m=1 nf=1 cnr_switch=2 pccrit=0 par=1 ptwell=1 sa=5e-06 sb=6.82e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=2.626e-14 panw10=1.3442e-13 $X=2128 $Y=1837 $D=189
M29 50 R 58 VDD! pfet L=6.5e-08 W=9.55e-07 AD=1.55665e-13 AS=2.16785e-13 PD=2.236e-06 PS=1.409e-06 NRD=0.104712 NRS=0.237696 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=5e-06 sb=1.63e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=0 panw8=2.73e-15 panw9=8.8335e-14 panw10=7.2345e-14 $X=2647 $Y=1837 $D=189
M30 Q 48 VDD! VDD! pfet L=6.5e-08 W=9.55e-07 AD=2.4448e-13 AS=1.90045e-13 PD=2.422e-06 PS=2.308e-06 NRD=0.19267 NRS=0.114136 m=1 nf=1 cnr_switch=0 pccrit=0 par=1 ptwell=1 sa=1.99e-07 sb=2.56e-07 sd=0 panw1=0 panw2=0 panw3=0 panw4=0 panw5=0 panw6=0 panw7=6.2075e-14 panw8=2.73e-15 panw9=2.626e-14 panw10=7.2345e-14 $X=3204 $Y=1837 $D=189
.ENDS
***************************************
