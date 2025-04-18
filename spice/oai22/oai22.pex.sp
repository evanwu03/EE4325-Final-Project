* File: oai22.pex.sp
* Created: Tue Apr 15 17:44:06 2025
* Program "Calibre xRC"
* Version "v2024.4_12.9"
* 
.include "oai22.pex.sp.pex"
.subckt oai22 OUT GND! VDD! INA INB IND INC
* 
* INC	INC
* IND	IND
* INB	INB
* INA	INA
* VDD!	VDD!
* GND!	GND!
* OUT	OUT
XD0_noxref N_GND!_D0_noxref_pos N_VDD!_D0_noxref_neg DIODENWX  AREA=7.80208e-12
+ PERIM=1.1176e-05
XMMN1 N_OUT_MMN1_d N_INA_MMN1_g N_NET3_MMN1_s N_GND!_D0_noxref_pos NFET
+ L=6.5e-08 W=5.6e-07 AD=1.3944e-13 AS=9.296e-14 PD=1.058e-06 PS=1.452e-06
+ NRD=0.181548 NRS=0.183929 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0
+ SA=1.66e-07 SB=2.019e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0
+ PANW7=0 PANW8=1.1505e-14 PANW9=2.4895e-14 PANW10=0
XMMN0 N_OUT_MMN1_d N_INB_MMN0_g N_NET3_MMN0_s N_GND!_D0_noxref_pos NFET
+ L=6.5e-08 W=5.6e-07 AD=1.3944e-13 AS=1.2768e-13 PD=1.058e-06 PS=1.016e-06
+ NRD=0.707738 NRS=0.38869 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0
+ SA=7.29e-07 SB=1.456e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0
+ PANW7=0 PANW8=1.1505e-14 PANW9=2.4895e-14 PANW10=0
XMMN3 N_NET3_MMN0_s N_IND_MMN3_g N_GND!_MMN3_s N_GND!_D0_noxref_pos NFET
+ L=6.5e-08 W=5.6e-07 AD=1.2768e-13 AS=1.6296e-13 PD=1.016e-06 PS=1.142e-06
+ NRD=0.425595 NRS=0.50119 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0
+ SA=1.25e-06 SB=9.35e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0
+ PANW7=0 PANW8=1.1505e-14 PANW9=2.4895e-14 PANW10=0
XMMN2 N_NET3_MMN2_d N_INC_MMN2_g N_GND!_MMN3_s N_GND!_D0_noxref_pos NFET
+ L=6.5e-08 W=5.6e-07 AD=1.6128e-13 AS=1.6296e-13 PD=1.696e-06 PS=1.142e-06
+ NRD=0.179762 NRS=0.538095 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0
+ SA=1.897e-06 SB=2.88e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0
+ PANW7=0 PANW8=1.1505e-14 PANW9=2.4895e-14 PANW10=0
XMMP0 NET2 N_INA_MMP0_g N_VDD!_MMP0_s N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=2.37795e-13 AS=1.5853e-13 PD=1.453e-06 PS=2.242e-06 NRD=0.260733
+ NRS=0.104712 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.66e-07
+ SB=2.019e-06 SD=0 PANW1=4.615e-15 PANW2=3.25e-15 PANW3=3.25e-15 PANW4=3.25e-15
+ PANW5=3.8585e-14 PANW6=3.324e-14 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=1.196e-14
+ PANW10=2.964e-14
XMMP2 N_OUT_MMP2_d N_INB_MMP2_g NET2 N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=2.1774e-13 AS=2.37795e-13 PD=1.411e-06 PS=1.453e-06 NRD=0.239791
+ NRS=0.260733 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=7.29e-07
+ SB=1.456e-06 SD=0 PANW1=4.615e-15 PANW2=3.25e-15 PANW3=3.25e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.4035e-14
+ PANW10=9.1715e-14
XMMP3 N_OUT_MMP2_d N_IND_MMP3_g NET1 N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=2.1774e-13 AS=2.77905e-13 PD=1.411e-06 PS=1.537e-06 NRD=0.237696
+ NRS=0.304712 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.25e-06
+ SB=9.35e-07 SD=0 PANW1=4.615e-15 PANW2=3.25e-15 PANW3=3.25e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.4035e-14
+ PANW10=9.1715e-14
XMMP1 NET1 N_INC_MMP1_g N_VDD!_MMP1_s N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=2.77905e-13 AS=2.7504e-13 PD=1.537e-06 PS=2.486e-06 NRD=0.304712
+ NRS=0.197906 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.897e-06
+ SB=2.88e-07 SD=0 PANW1=4.615e-15 PANW2=3.25e-15 PANW3=3.25e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=7.5075e-14 PANW8=1.3e-14 PANW9=1.196e-14
+ PANW10=2.964e-14
*
.include "oai22.pex.sp.OAI22.pxi"
*
.ends
*
*
