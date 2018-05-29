
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name PRACTICA08_cartasAsm -dir "C:/Users/iAngelMx/Documents/GitHub/arqCompVHDL/PRACTICA08_cartasAsm/planAhead_run_2" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/iAngelMx/Documents/GitHub/arqCompVHDL/PRACTICA08_cartasAsm/PRACTICA08_cartasAsm.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/iAngelMx/Documents/GitHub/arqCompVHDL/PRACTICA08_cartasAsm} }

set_param project.pinAheadLayout  yes
set_property target_constrs_file "PRACTICA08_cartasAsm.ucf" [current_fileset -constrset]
add_files [list {PRACTICA08_cartasAsm.ucf}] -fileset [get_property constrset [current_run]]
link_design
