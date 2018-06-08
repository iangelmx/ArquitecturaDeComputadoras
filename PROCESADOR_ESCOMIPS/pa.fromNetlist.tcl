
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name PROCESADOR_ESCOMIPS -dir "C:/Users/iAngelMx/Documents/GitHub/arqCompVHDL/PROCESADOR_ESCOMIPS/planAhead_run_1" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/iAngelMx/Documents/GitHub/arqCompVHDL/PROCESADOR_ESCOMIPS/PROCESADOR_ESCOMIPS.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/iAngelMx/Documents/GitHub/arqCompVHDL/PROCESADOR_ESCOMIPS} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "PROCESADOR_ESCOMIPS.ucf" [current_fileset -constrset]
add_files [list {PROCESADOR_ESCOMIPS.ucf}] -fileset [get_property constrset [current_run]]
link_design
