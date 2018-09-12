
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name BAI_305_GIAIMA_38_ES -dir "D:/TAI_LIEU_HOC/HKVII/TT_HDL/BAI_305_GIAIMA_38_ES/planAhead_run_1" -part xc3s500epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "GIAIMA_38_SE.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {GIAIMA_SELECT_INS_E.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {GIAIMA_38_SE.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top GIAIMA_38_SE $srcset
add_files [list {GIAIMA_38_SE.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500epq208-5
