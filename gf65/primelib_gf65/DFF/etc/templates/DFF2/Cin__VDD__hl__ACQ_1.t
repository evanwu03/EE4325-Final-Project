##############################################################################
# Template generated by PrimeLib T-2022.03-SP1 (built on Apr 12, 2022 13:01:04) #
# PrimeLib Path: /proj/cad/synopsys/synopsys_2021/primelib/T-2022.03-SP1/linux64/bin/primelib #
# Host Name: engnx05a.utdallas.edu, User Name: ebw220000, PID: 2728338 #
# Directory: /home/010/e/eb/ebw220000/cad/EE4325_UART_Project/gf65/primelib_gf65 #
# Date Thu, 08 May 2025 15:15:37 CDT #
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
## Test Cin__VDD__hl
set tempTest [ SBTest "Cin__VDD__hl" ]
$tempTest setTargets { Cin__VDD__hl }
$tempTest setTargetInputs {
  {VDD hl}}

$tempTest setSwitchingInputs {
  {VDD hl}}

$tempTest setAnalysisType tranPlus

## 
## Sweep Specification
$tempTest setTagNumTableDimensions 0 mpw

## 
## Harnesses
$tempTest setAcquire 1

## 
## ACQ_1
set tempAcq [ SBInputCapacitanceAcquisition "ACQ_1" ]
$tempAcq setHarnessName default
$tempAcq setAcquire 1
$tempAcq setState "!CLK&!D&!Q&!R&!VSS"
$tempAcq setStateCoverage "1"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { CLK R VDD D VSS } { initial_delay units ct default_slew pp }

$tempWT setStimulus            {   CLK  R    VDD  D    VSS   } {
                   "0"      {} {   0    0    1    0    0     }
       "initial_delay" { in1 } {   -    -    0    -    -     }
"(initial_delay)+(pp)"      {} {   -    -    -    -    -     }
}

$tempWT addMeasurements {} {
  { cin_VDD              Cin        { VDD in1 } NO_USER SYS }
}

$tempWT bindInterface { CLK R VDD D VSS } { 10e-12 VDD[cycle_time] VDD[cycle_time] VDD[default_slew] cell_power_period }
$tempAcq addWaveTable $tempWT
release_obj $tempWT

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
$tempAcq addHarness $tempHarness
release_obj $tempHarness

$tempAcq setHarnessName default
$tempTest addAcquisition $tempAcq
release_obj $tempAcq

$tempTestColl addTest $tempTest
release_obj $tempTest

set tempTestColl

