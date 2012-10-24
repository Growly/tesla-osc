
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name vhdl_fun -dir "C:/vhdl_fun/planAhead_run_1" -part xc6slx45csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/vhdl_fun/pulse_generator.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/vhdl_fun} }
set_property target_constrs_file "pulse_generator.ucf" [current_fileset -constrset]
add_files [list {pulse_generator.ucf}] -fileset [get_property constrset [current_run]]
link_design
