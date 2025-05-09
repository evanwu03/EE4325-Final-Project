if { [catch {
set_location /home/010/e/eb/ebw220000/cad/EE4325_UART_Project/gf65/primelib_gf65/NOR2
log_info "[clock format [clock seconds]]: Sourcing environment settings"
set t0 [clock seconds]
set sis_log_file "/var/tmp/pl.771092.W$::env(CDPL_WORKERID).[lindex [split [info hostname] '.'] 0].[pid].log"
if { [info exists ::env(SGE_TASK_ID)] } {
  if { $::env(SGE_TASK_ID) != "undefined" } {
    set sis_log_file "/var/tmp/pl.771092.W$::env(SGE_TASK_ID).[lindex [split [info hostname] '.'] 0].[pid].log"
  }
}
set_log_file $sis_log_file
set_log_level info
set_log_stdout_level info
set jobName [lindex $argv 0]

# Parameter block and pintype definitions.  The following definitions
# preserve any (pintype) parameters set outside of the configure.tcl file.
define_parameters INV {
    set PLACEHOLDER X
}

define_parameters NOR2 {
    set PLACEHOLDER X
}

define_parameters default {
    set PLACEHOLDER X
}

define_parameters liberty_model {
    set default_cell_leakage_power 0.0
    set default_fanout_load 1.0
    set default_inout_pin_cap 1.0
    set default_input_pin_cap 1.0
    set default_leakage_power_density 0.0
    set default_output_pin_cap 0.0
    set delay_model table_lookup
    set input_threshold_pct_fall 50.0
    set input_threshold_pct_rise 50.0
    set output_threshold_pct_fall 50.0
    set output_threshold_pct_rise 50.0
    set slew_lower_threshold_pct_fall 10.0
    set slew_lower_threshold_pct_rise 10.0
    set slew_upper_threshold_pct_fall 90.0
    set slew_upper_threshold_pct_rise 90.0
}

# Liberty attributes set by user
# Liberty attributes cleared by user

#Operating conditions

create_operating_condition op_cond
add_opc_supplies op_cond VDD 1.2
add_opc_grounds op_cond VSS 0.0

## 
## User-specified characterization and modeling configuration options.
## 

create_parameter cdpl_log_subdir
set_config_opt -- cdpl_log_subdir pid1476931

create_parameter combine_timing_and_power
set_config_opt -- combine_timing_and_power 1

create_parameter configure_arc_based
set_config_opt -cell NOR2 -- configure_arc_based 0

create_parameter configure_disable_asynch_pins_initialization
set_config_opt -- configure_disable_asynch_pins_initialization 0

create_parameter default_combine_timing_and_power
set_config_opt -- default_combine_timing_and_power 1

create_parameter is_char_mode
set_config_opt -- is_char_mode 1

create_parameter seed_simulator_version_info
set_config_opt -- seed_simulator_version_info O-2018.09-2

create_parameter simulator_version_info
set_config_opt -- simulator_version_info O-2018.09-2

create_parameter slew_derate_lower_threshold
set_config_opt -- slew_derate_lower_threshold 0.1

create_parameter slew_derate_upper_threshold
set_config_opt -- slew_derate_upper_threshold 0.9

create_parameter source_from_instance
set_config_opt -- source_from_instance {}

log_info "[clock format [clock seconds]]: Environment set up done ([expr [clock seconds] - $t0] seconds)"
} err ] } {

  # Connect back to the server to send err message.
  catch {if {[string length $err] > 0} {log_error $err}}
  if {[catch {
    startCdplWorker $err
  } err]} {exit 2}
  exit 0
}


# Connect back to the server to retrieve the jobs.
if {[catch {
  startCdplWorker "" 
  log_info "CDPL worker exited normally."
  reset_log_file
  if { [log_num_errors] > 0 } {
    if { [catch {exec mv -f $sis_log_file /home/010/e/eb/ebw220000/cad/EE4325_UART_Project/gf65/primelib_gf65/NOR2/runtime/cdpl/pid1476931} mv_err] } {
      log_warning $mv_err
    }
  } else {
    if { [catch {exec rm -f $sis_log_file} rm_err] } {
      log_warning $rm_err
    }
  }
} err]} {
  catch {if {[string length $err] > 0} {log_error $err}}
  exit 3
}
exit 0
