##############################################################################
# Template generated by PrimeLib T-2022.03-SP1 (built on Apr 12, 2022 13:01:04) #
# PrimeLib Path: /proj/cad/synopsys/synopsys_2021/primelib/T-2022.03-SP1/linux64/bin/primelib #
# Host Name: engnx04a.utdallas.edu, User Name: ebw220000, PID: 2661669 #
# Directory: /home/010/e/eb/ebw220000/cad/EE4325_UART_Project/gf65/primelib_gf65 #
# Date Sun, 11 May 2025 18:24:07 CDT #
#                                                                            #
# Copyright (C) 2022 Synopsys Inc.                                #
# This file contains confidential and proprietry information.                #
# All rights reserved.                                                       #
#                                                                            #
##############################################################################

set tempTestColl [ SBTestCollection automap ]


# Specifies the version of the template API expected by this file.
$tempTestColl setTemplateVer 7

## 
## Configuration Flags
$tempTestColl setConfigurationFlags { doTiming doPower }

## 
## Formal Ports
$tempTestColl makeFormalPorts {VSS D CLK Q R VDD}
$tempTestColl setParameter retention_ports {}
$tempTestColl setParameter synch_controls {}
$tempTestColl setParameter clock_ports {CLK}
$tempTestColl setParameter asynch_ports {R}
$tempTestColl setParameter asynch_ports_active_state {R 01 Q 10}

## 
## Tests

## 
## Test cmpw_hbm__CLK__lh__CLK__hl
set tempTest [ SBTest "cmpw_hbm__CLK__lh__CLK__hl" ]
$tempTest setTargets { cmpw_hbm__CLK__lh__CLK__hl }
$tempTest setTargetInputs {
  {CLK lh}}

$tempTest setTargetOutputs {
  {Q lh}}

$tempTest setTargetReferences {
  {CLK hl}}

$tempTest setSwitchingInputs {
  {CLK lh}}

$tempTest setSwitchingRefs {
  {CLK hl}}

$tempTest setAnalysisType tranPlus

## 
## Sweep Specification
$tempTest setTagNumTableDimensions 0 mpw

## 
## Harnesses
$tempTest setAcquire 1

## 
## ACQ_1
set tempAcq [ SBMPWHBMAcquisition "ACQ_1" ]
$tempAcq setHarnessName default
$tempAcq setAcquire 1
$tempAcq setState "D&!R"
$tempAcq setStateCoverage "1"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { Q:out R D CLK } { initial_delay units ct default_slew stable cmpw min_cmpw max_cmpw opt_tolerance init_hbm degrade_cmpw }

$tempWT setStimulus                           {   R    D    CLK  Q     } {
                              "0"          {} {   0    1    0    0     }
                  "initial_delay" { in1 out } {   -    -    1    1     }
           "(initial_delay)+cmpw"     { in2 } {   -    -    0    -     }
"((initial_delay)+cmpw)+(stable)"          {} {   -    -    -    -     }
}

$tempWT addMeasurements {} {
  { tin_hbm_CLK          Tin_hbm    { CLK in1 } NO_USER SYS }
  { cmpw_hbm_CLK         cmpw_hbm   { CLK in1 CLK in2 } NO_USER SYS }
  { tout_hbm_Q           Tout_hbm   { Q in1 0 1 } NO_USER SYS }
  { fallback_hbm_Q       fallback_hbm { Q in1 0 } NO_USER SYS }
  { sis_pass_fail        passfail_hbm { 0 CLK CLK } NO_USER SYS }
}

$tempWT addHbm    cmpw    min_cmpw    max_cmpw    None    independent   { Q pass-fail }   { Q positive-side }   { Q 0.1 -1 }   { Q 1e-11 -1 -1 }  { (fallback_hbm__Q__lh_trig-tout_hbm__Q__lh_targ) (fallback_hbm__Q__lh_targ-tout_hbm__Q__lh_trig) }   {  }  { Q lh }  {  }  { cmpw_hbm__CLK__lh__CLK__hl_trig cmpw_hbm__CLK__lh__CLK__hl_targ tin_hbm__CLK__lh_trig tin_hbm__CLK__lh_targ tout_hbm__Q__lh_trig tout_hbm__Q__lh_targ } {  } {  } { cmpw_hbm__CLK__lh__CLK__hl_value } {  } {  } expand None opt_tolerance None None max_cmpw "1"
$tempWT bindInterface { Q R D CLK } { 10e-12 CLK[cycle_time] CLK[cycle_time] CLK[default_slew] max(CLK[stable_time],Q[stable_time]) CLK[max_cmpw] CLK[min_cmpw] CLK[max_cmpw] CLK[constraint_resolution] CLK[min_cmpw] 0.0 }
$tempAcq addWaveTable $tempWT
release_obj $tempWT

## 
## Initialization Acquisition
$tempAcq setInitializationAcquisition initialization__ACQ_1

## 
## Sweep Specification
$tempAcq setTagNumTableDimensions 0 mpw

## 
## Harnesses

set tempHarness [ SBHarness default ]
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_Q
$tempTopOp setOperation insert
$tempTopOp setNodes {Q Q[logic_low_name]}
$tempTopOp setParam {load_Q}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_VSS
$tempTopOp setOperation insert
$tempTopOp setNodes {VSS VSS[logic_low_name]}
$tempTopOp setParam {load_VSS}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_VDD
$tempTopOp setOperation insert
$tempTopOp setNodes {VDD VDD[logic_low_name]}
$tempTopOp setParam {load_VDD}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
$tempAcq addHarness $tempHarness
release_obj $tempHarness

$tempAcq setHarnessName default
$tempTest addAcquisition $tempAcq
release_obj $tempAcq

$tempTestColl addTest $tempTest
release_obj $tempTest

set tempTestColl

