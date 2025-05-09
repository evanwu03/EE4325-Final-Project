#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu May  8 17:57:16 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.10-p006_1 (64bit) 05/31/2017 11:06 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.10-p006_1 NR170516-1601/17_10-UB (database version 2.30, 378.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.10-p003 (64bit) 05/31/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.10-p002_1 () May 18 2017 07:46:32 ( )
#@(#)CDS: SYNTECH 17.10-p001_1 () May 17 2017 01:24:45 ( )
#@(#)CDS: CPE v17.10-p003
#@(#)CDS: IQRC/TQRC 16.1.1-s140 (64bit) Fri Mar 17 16:46:12 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_gnd_net GND!
set init_lef_file ../gf65.lef
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_lef_file ../gf65.lef
set init_design_settop 0
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_lef_file ../gf65.lef
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_design_settop 0
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_design_settop 0
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_design_settop 0
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_design_settop 0
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_design_settop 0
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
man IMPVL-209
set init_gnd_net GND!
set init_design_settop 0
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_design_settop 0
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_design_settop 0
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
set init_gnd_net GND!
set init_design_settop 0
set init_verilog ../../synopsys/project6/uart_syn.v
set init_pwr_net VDD!
init_design
fit
fit
getIoFlowFlag
setFPlanRowSpacingAndType 5.98 1
setIoFlowFlag 0
floorPlan -flip n -site CoreSite -r 1.0 0.7 5 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
fit
pan 0.529 3.615
clearGlobalNets
globalNetConnect VDD! -type tiehi -inst *
clearGlobalNets
globalNetConnect VDD! -type tiehi -inst *
clearGlobalNets
globalNetConnect VDD! -type tiehi -inst *
globalNetConnect GND! -type tielo -inst *
clearGlobalNets
globalNetConnect VDD! -type tiehi -inst *
globalNetConnect GND! -type tielo -inst *
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer M6 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND! VDD!} -type core_rings -follow core -layer {top M1 bottom M1 left M2 right M2} -width {top 0.2 bottom 0.2 left 0.2 right 0.2} -spacing {top 0.2 bottom 0.2 left 0.2 right 0.2} -offset {top 0.78 bottom 0.78 left 0.78 right 0.78} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer M6 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND! VDD!} -type core_rings -follow core -layer {top M1 bottom M1 left M2 right M2} -width {top 0.2 bottom 0.2 left 0.2 right 0.2} -spacing {top 0.2 bottom 0.2 left 0.2 right 0.2} -offset {top 0.78 bottom 0.78 left 0.78 right 0.78} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
gui_select -rect {5.483 6.859 6.258 7.834}
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer M6 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND! VDD!} -type core_rings -follow core -layer {top M1 bottom M1 left M2 right M2} -width {top 0.2 bottom 0.2 left 0.2 right 0.2} -spacing {top 0.2 bottom 0.2 left 0.2 right 0.2} -offset {top 0.78 bottom 0.78 left 0.78 right 0.78} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set init_design_settop 0
init_design
gui_select -rect {11.015 13.422 12.780 13.922}
pan 4.147 2.294
pan -2.950 -2.725
init_design
gui_select -rect {-2.323 17.105 13.329 -0.997}
deselectAll
selectObject IO_Pin i_System_Clock
gui_select -rect {0.021 0.121 0.138 0.128}
selectObject IO_Pin i_System_Clock
uiSetTool moveWire
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin i_System_Clock
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
selectObject IO_Pin o_TX_Busy
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin i_System_Clock
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin i_System_Clock
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
fit
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
selectObject IO_Pin o_TX_Busy
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin o_TX_Busy
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin i_System_Clock
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
selectObject IO_Pin i_System_Clock
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
selectObject IO_Pin o_TX_Busy
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
deselectAll
pan -5.989 -3.658
set init_design_settop 0
init_design
init_design
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
pan 1.052 -4.485
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set init_design_settop 0
init_design
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
set init_design_settop 0
init_design
init_design
set layerNameNoAbbreviation 0
set layerNameNoAbbreviation 1
