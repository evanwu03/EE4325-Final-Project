* File: xnor2.pex.sp
* Created: Tue Apr 15 16:40:11 2025
* Program "Calibre xRC"
* Version "v2024.4_12.9"
* 
.include "xnor2.pex.sp.pex"
.subckt xnor2  GND! OUT VDD! INA INB
* 
* INB	INB
* INA	INA
* VDD!	VDD!
* OUT	OUT
* GND!	GND!
XD0_noxref N_GND!_D0_noxref_pos N_VDD!_D0_noxref_neg DIODENWX  AREA=7.81299e-12
+ PERIM=1.1184e-05
XMMN0 N_Z_MMN0_d N_INA_MMN0_g NET1 N_GND!_D0_noxref_pos NFET L=6.5e-08 W=5.6e-07
+ AD=9.296e-14 AS=1.386e-13 PD=1.452e-06 PS=1.055e-06 NRD=0.178571 NRS=0.441964
+ M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.66e-07 SB=2.038e-06 SD=0
+ PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0 PANW7=0 PANW8=1.1505e-14
+ PANW9=2.4895e-14 PANW10=0
XMMN1 NET1 N_INB_MMN1_g N_GND!_MMN1_s N_GND!_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=1.386e-13 AS=9.772e-14 PD=1.055e-06 PS=9.09e-07 NRD=0.441964
+ NRS=0.178571 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=7.26e-07
+ SB=1.478e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0 PANW7=0
+ PANW8=1.1505e-14 PANW9=2.4895e-14 PANW10=0
XMMN4 N_NET3_MMN4_d N_Z_MMN4_g N_GND!_MMN1_s N_GND!_D0_noxref_pos NFET L=6.5e-08
+ W=5.6e-07 AD=9.1e-14 AS=9.772e-14 PD=8.85e-07 PS=9.09e-07 NRD=0.396429
+ NRS=0.444643 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.14e-06
+ SB=1.064e-06 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0 PANW7=0
+ PANW8=1.1505e-14 PANW9=2.4895e-14 PANW10=0
XMMN3 N_OUT_MMN3_d N_INB_MMN3_g N_NET3_MMN4_d N_GND!_D0_noxref_pos NFET
+ L=6.5e-08 W=5.6e-07 AD=1.232e-13 AS=9.1e-14 PD=1e-06 PS=8.85e-07 NRD=0.603571
+ NRS=0.183929 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0 SA=1.53e-06
+ SB=6.74e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0 PANW7=0
+ PANW8=1.1505e-14 PANW9=2.4895e-14 PANW10=0
XMMN2 N_OUT_MMN3_d N_INA_MMN2_g N_NET3_MMN2_s N_GND!_D0_noxref_pos NFET
+ L=6.5e-08 W=5.6e-07 AD=1.232e-13 AS=9.464e-14 PD=1e-06 PS=1.458e-06
+ NRD=0.182143 NRS=0.183929 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=0
+ SA=2.035e-06 SB=1.69e-07 SD=0 PANW1=0 PANW2=0 PANW3=0 PANW4=0 PANW5=0 PANW6=0
+ PANW7=0 PANW8=1.1505e-14 PANW9=2.4895e-14 PANW10=0
XMMP0 N_Z_MMP0_d N_INA_MMP0_g N_VDD!_MMP0_s N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=2.36362e-13 AS=1.5853e-13 PD=1.45e-06 PS=2.242e-06 NRD=0.129843
+ NRS=0.104712 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.66e-07
+ SB=2.038e-06 SD=0 PANW1=4.615e-15 PANW2=3.25e-15 PANW3=3.25e-15
+ PANW4=1.9485e-14 PANW5=4.909e-14 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14
+ PANW9=1.196e-14 PANW10=2.964e-14
XMMP1 N_Z_MMP0_d N_INB_MMP1_g N_VDD!_MMP1_s N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=2.36362e-13 AS=1.66647e-13 PD=1.45e-06 PS=1.304e-06 NRD=0.388482
+ NRS=0.12356 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=7.26e-07
+ SB=1.478e-06 SD=0 PANW1=4.615e-15 PANW2=3.25e-15 PANW3=3.25e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.9685e-14 PANW9=6.735e-14
+ PANW10=9.1715e-14
XMMP4 N_OUT_MMP4_d N_Z_MMP4_g N_VDD!_MMP1_s N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=1.55187e-13 AS=1.66647e-13 PD=1.28e-06 PS=1.304e-06 NRD=0.230366
+ NRS=0.241885 M=1 NF=1 CNR_SWITCH=2 PCCRIT=0 PAR=1 PTWELL=1 SA=1.14e-06
+ SB=1.064e-06 SD=0 PANW1=4.615e-15 PANW2=3.25e-15 PANW3=3.25e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=1.96e-14
+ PANW10=1.4615e-13
XMMP2 N_OUT_MMP4_d N_INB_MMP2_g NET2 N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=1.55187e-13 AS=2.101e-13 PD=1.28e-06 PS=1.395e-06 NRD=0.109948
+ NRS=0.230366 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=1.53e-06
+ SB=6.74e-07 SD=0 PANW1=4.615e-15 PANW2=3.25e-15 PANW3=3.25e-15 PANW4=3.25e-15
+ PANW5=3.25e-15 PANW6=6.5e-15 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=7.4035e-14
+ PANW10=9.1715e-14
XMMP3 NET2 N_INA_MMP3_g N_VDD!_MMP3_s N_VDD!_D0_noxref_neg PFET L=6.5e-08
+ W=9.55e-07 AD=2.101e-13 AS=1.61395e-13 PD=1.395e-06 PS=2.248e-06 NRD=0.230366
+ NRS=0.104712 M=1 NF=1 CNR_SWITCH=0 PCCRIT=0 PAR=1 PTWELL=1 SA=2.035e-06
+ SB=1.69e-07 SD=0 PANW1=4.615e-15 PANW2=3.25e-15 PANW3=3.25e-15 PANW4=3.25e-15
+ PANW5=6.115e-15 PANW6=6.571e-14 PANW7=1.3e-14 PANW8=1.3e-14 PANW9=1.196e-14
+ PANW10=2.964e-14
*
.include "xnor2.pex.sp.XNOR2.pxi"
*
.ends
*
*
