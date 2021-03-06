" Vim syntax file
" Language: Basement Configuration
" Maintainer: Michel Kuhlmann

if exists("b:current_syntax") 
    finish
endif

"--------------------------------------------------------------------------------
" Folding
"--------------------------------------------------------------------------------
let bmc_syntax_folding = 1
if exists("g:pst_syntax_folding")
  setlocal foldmethod=syntax
endif
if exists("g:bmc_syntax_folding")
  syn region bmcRegion matchgroup=Delimiter start=/{/ matchgroup=Delimiter end=/}/ transparent contains=ALLBUT,bmcError,bmcBraceError,bmcParenError fold
endif
syn match bmcError      "[)\]}]"
syn match bmcBraceError "[)}]" contained
syn match bmcParenError "[\]}]" contained

"--------------------------------------------------------------------------------
" Keyword highlighting
"--------------------------------------------------------------------------------
syn region bmcVariable matchgroup=Delimiter start=/\$/ matchgroup=Delimiter end=/\$/ 
syn region bmtVariable matchgroup=Delimiter start=/{{/ matchgroup=Delimiter end=/}}/ 
syn region bmtVariable matchgroup=Delimiter start=/{{$/ matchgroup=Delimiter end=/}}}/ 
syn match bmcNumber "\<\d\+\>"
" Keywords
syn keyword BmcControl import
syn keyword BmcKeywords BASECHAIN_1D BOUNDARY COUPLING COUPLINGS DOMAIN FRICTION GEOMETRY HYDRAULICS INITIAL OUTPUT PARALLEL PARAMETER PHYSICAL_PROPERTIES PROJECT SECTION_COMPUTATION SOURCE EXTERNAL_SOURCE SPECIAL_OUTPUT INNER_BOUNDARY STRINGDEF BASEPLANE_2D CONTROLLER MONITORED_VARIABLE MANIPULATED_VARIABLE  MORPHOLOGY BEDMATERIAL FIXED_BED MIXTURE SOIL_DEF SOIL_ASSIGNMENT SUSPENDED_LOAD GRAIN_CLASS TIMESTEP BASE_EXTERN TURBULENCE_MODEL BEDLOAD FORMULA LAYER DIRECTION 

syn keyword BmcAttr author CFL console_time_step cross_section_order date default_friction downstream_interface downstream_subdomain file initial_time_step internal_levees level maximum_time_step max_interval minimum_water_depth min_interval name number_threads output_time_step region_name restart_time_step slope string title total_run_time type upstream_interface upstream_subdomain width multiregion cross_section side wse cross_sections input_type friction wall_friction string_name geo_min_area_ratio geo_max_angle_quadrilateral geo_min_aspect_ratio restart_start_time my string_name1 string_name2 element_ids format balance_values element_values flush_all_num_steps stringdef_values stringdefs history_one_file node_ids q_out WSE_out two_way_coupling values precision index simulation_scheme riemann_solver minimum_time_step rho_fluid viscosity gravity position root_value_type root_value_series_file root_value_qseries_varname output start_value variable wse3D vectors gridlines vectors_scaling_factor write_jpeg_image_time threshold_wse u v coefficients time_average_sec dynamic_depth_solver upstream_direction fixed_time_step port ip external_subdomain basement_subdomain external_interface basement_interface BASEextern kinematic_viscosity turbulence_factor restart_solution_time start_time porosity density control_volume_type control_volume_thickness control_volume_factor create_new_layers diameters volume_fraction mixture bottom_elevation soil upwind abrasion hydro_step velocity_area bedload_formula upstream_subdomain1 upstream_subdomain2 max_time_level average_steps print_series upstream_interface1 upstream_interface2 delay max_change_rate morph_cycle cycle_step cycle_step_file riemann_tolerance upwind_index upwind bedload_factor bedload_exponent theta_critical_approach critical_shear_stress_calibration theta_critical theta_critical_index theta_critical_hiding local_slope_correction lateral_transport_type lateral_index radius_calculation_type elem_ids boundary_values  range

syn match BmcComment '//.*'

hi link bmcVariable Identifier
hi link bmtVariable Identifier
hi link BmcAttr     SpecialChar
hi link BmcKeywords Function
hi link BmcComment  Conditional
hi link bmcNumber   Number

hi link BmcComment  Comment
