# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.runs/synth_1/project_reti_logiche.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

OPTRACE "synth_1" START { ROLLUP_AUTO }
set_msg_config  -id {filemgmt 20-1318}  -string {{WARNING: [filemgmt 20-1318] Duplicate Design Unit 'tb_reset_during_read(tb_reset_during_read_arch)' found in library 'xil_defaultlib'
	(Active) Duplicate found at line 9 of file C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/tb1/tb_multi_start.vhd
Duplicate found in file C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/tb1/tb_reset_during_read.vhd}}  -suppress 
set_msg_config  -id {filemgmt 20-736}  -string {{WARNING: [filemgmt 20-736] The current top specification, "project_reti_logiche" (Library: xil_defaultlib), does not uniquely identify a single design element. Using "project_reti_logiche" (Architecture: project_reti_logiche_arch, Library: xil_defaultlib, File: C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/tb3/tb.vhd).}}  -suppress 
set_msg_config  -id {Vivado 12-13340}  -string {{WARNING: [Vivado 12-13340] Unable to auto find GCC executables from simulator install path! (path not set)}}  -suppress 
set_msg_config  -id {filemgmt 56-199}  -string {{WARNING: [filemgmt 56-199] Attempt to get parsing info during refresh. "On-the-fly" syntax checking information may be incorrect. [C:\Users\fgran\OneDrive - Politecnico di Milano\2023-2024\Corsi\RL Reti Logiche\Vivado\project_reti_logiche\project_reti_logiche.srcs\sources_1\new\project_reti_logiche.vhd:]}}  -suppress 
set_msg_config  -id {filemgmt 56-199}  -string {{WARNING: [filemgmt 56-199] Attempt to get parsing info during refresh. "On-the-fly" syntax checking information may be incorrect. [C:\Users\fgran\OneDrive - Politecnico di Milano\2023-2024\Corsi\RL Reti Logiche\Vivado\project_reti_logiche\tb4\i_rst_tb.vhd:]}}  -suppress 
set_msg_config  -id {Synth 8-7080}  -string {{WARNING: [Synth 8-7080] Parallel synthesis criteria is not met}}  -suppress 
set_msg_config  -id {filemgmt 20-1318}  -string {{WARNING: [filemgmt 20-1318] Duplicate Design Unit 'project_reti_logiche(project_reti_logiche_arch)' found in library 'xil_defaultlib'
Duplicate found at line 53 of file C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.srcs/sources_1/new/project_reti_logiche.vhd
	(Active) Duplicate found at line 25 of file C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/tb3/tb.vhd}}  -suppress 
set_msg_config  -id {filemgmt 56-199}  -suppress 
set_msg_config  -id {filemgmt 20-1318}  -suppress 
set_msg_config  -id {Common 17-180}  -suppress 
set_msg_config  -id {filemgmt 20-1318}  -string {{WARNING: [filemgmt 20-1318] Duplicate Design Unit 'project_reti_logiche(project_reti_logiche_arch)' found in library 'xil_defaultlib'
Duplicate found at line 53 of file C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.srcs/sources_1/new/project_reti_logiche.vhd
	(Active) Duplicate found at line 53 of file C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.srcs/sources_1/new/project_reti_logiche_v1.vhd}}  -suppress 
set_msg_config  -id {Common 17-180}  -string {{ERROR: [Common 17-180] Spawn failed: No error}}  -suppress 
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a200tfbg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.cache/wt} [current_project]
set_property parent.project_path {C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo {c:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_vhdl -library xil_defaultlib {{C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.srcs/sources_1/new/project_reti_logiche.vhd}}
OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.srcs/constrs_1/new/clock.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.srcs/constrs_1/new/clock.xdc}}]

set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental {C:/Users/fgran/OneDrive - Politecnico di Milano/2023-2024/Corsi/RL Reti Logiche/Vivado/project_reti_logiche/project_reti_logiche.srcs/utils_1/imports/synth_1/project_reti_logiche.dcp}
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top project_reti_logiche -part xc7a200tfbg484-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef project_reti_logiche.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
generate_parallel_reports -reports { "report_utilization -file project_reti_logiche_utilization_synth.rpt -pb project_reti_logiche_utilization_synth.pb"  } 
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
