
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name vhdl_fun -dir "C:/vhdl_fun/planAhead_run_2" -part xc6slx45csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "pulse_generator.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {pulse_generator.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top pulse_generator $srcset
add_files [list {pulse_generator.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45csg324-3
