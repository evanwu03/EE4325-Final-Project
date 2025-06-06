* File: NAND3.pex.sp
* Created: Thu May  8 20:25:39 2025
* Program "Calibre xRC"
* Version "v2024.4_12.9"
* 
.include "NAND3.pex.sp.pex"
.subckt NAND3  OUT GND! VDD! A B C
* 
* C	C
* B	B
* A	A
* VDD!	VDD!
* GND!	GND!
* OUT	OUT
XD0_noxref N_GND!_D0_noxref_pos N_VDD!_D0_noxref_neg DIODENWX  AREA=8.4994e-12
+ PERIM=1.1738e-05
XMMN1 N_OUT_MMN1_d N_A_MMN1_g NET1 N_GND!_D0_noxref_pos NFET L=6.5e-08 W=5.6e-07
+ AD=9.296e-14 AS=2.0524e-13 PD=1.452e-06 PS=1.293e-06 NRD=0.183929 NRS=0.654464
+ M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.66e-07 SB=1.816e-06 SD=0
+ PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0 PANW7=0 PANW8=0
+ PANW9=8.385e-15 PANW10=2.8015e-14
XMMN2 NET1 N_B_MMN2_g NET2 N_GND!_D0_noxref_pos NFET L=6.5e-08 W=5.6e-07
+ AD=2.0524e-13 AS=2.0132e-13 PD=1.293e-06 PS=1.279e-06 NRD=0.654464
+ NRS=0.641964 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=9.64e-07
+ SB=1.018e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0 PANW7=0
+ PANW8=0 PANW9=8.385e-15 PANW10=2.8015e-14
XMMN3 NET2 N_C_MMN3_g N_GND!_MMN3_s N_GND!_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=2.0132e-13 AS=1.3104e-13 PD=1.279e-06 PS=1.588e-06 NRD=0.641964
+ NRS=0.217262 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.748e-06
+ SB=2.34e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0 PANW7=0
+ PANW8=0 PANW9=8.385e-15 PANW10=2.8015e-14
XMMP0 N_OUT_MMP0_d N_A_MMP0_g N_VDD!_MMP0_s N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=3.50007e-13 AS=1.5853e-13 PD=1.688e-06 PS=2.242e-06 NRD=0.238743
+ NRS=0.110995 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.66e-07
+ SB=1.756e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=3.1515e-14
+ PANW6=3.056e-14 PANW7=0 PANW8=2.73e-15 PANW9=2.886e-14 PANW10=7.2345e-14
XMMP1 N_OUT_MMP0_d N_B_MMP1_g N_VDD!_MMP1_s N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=3.50007e-13 AS=3.43322e-13 PD=1.688e-06 PS=1.674e-06
+ NRD=0.528796 NRS=0.427225 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1
+ SA=9.64e-07 SB=9.58e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0
+ PANW7=0 PANW8=2.73e-15 PANW9=1.5301e-13 PANW10=7.2345e-14
XMMP2 N_OUT_MMP2_d N_C_MMP2_g N_VDD!_MMP1_s N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=1.6617e-13 AS=3.43322e-13 PD=2.258e-06 PS=1.674e-06 NRD=0.118325
+ NRS=0.325654 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.748e-06
+ SB=1.74e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=1.337e-14
+ PANW6=4.8705e-14 PANW7=0 PANW8=2.73e-15 PANW9=2.886e-14 PANW10=7.2345e-14
*
.include "NAND3.pex.sp.NAND3.pxi"
*
.ends
*
*
