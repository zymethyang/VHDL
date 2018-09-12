
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name BAI_301_GIAIMA2_24H -dir "D:/TAI_LIEU_HOC/HKVI/HDL/BAITAP/BAI_301_GIAIMA2_24H/planAhead_run_1" -part xc3s500epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "GIAIMA2_24H.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {GIAIMA_SELECT_INS.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {GIAIMA_CONDITIONAL_INS.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {GIAIMA2_24H.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top GIAIMA2_24H $srcset
add_files [list {GIAIMA2_24H.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500epq208-5
