
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name PRACTICA03 -dir "C:/Users/ayhc9/arqCompVHDL/PRACTICA03/planAhead_run_2" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/ayhc9/arqCompVHDL/PRACTICA03/PRACTICA03.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/ayhc9/arqCompVHDL/PRACTICA03} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "PRACTICA03.ucf" [current_fileset -constrset]
add_files [list {PRACTICA03.ucf}] -fileset [get_property constrset [current_run]]
link_design
