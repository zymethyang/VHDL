
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name BAI_302_GIAIMA_24H_2IC -dir "D:/TAI_LIEU_HOC/HKVII/TT_HDL/BAI_302_GIAIMA_24H_2IC/planAhead_run_3" -part xc3s500epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "GIAIMA_24H_2IC.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {GIAIMA_IF_INS.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {GIAIMA_CASE_INS.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {GIAIMA_24H_2IC.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top GIAIMA_24H_2IC $srcset
add_files [list {GIAIMA_24H_2IC.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500epq208-5
