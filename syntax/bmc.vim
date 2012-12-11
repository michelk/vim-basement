" Vim syntax file
" Language: Basement Configuration
" Maintainer: Michel Kuhlmann
" Last Change: Monday, 2012-11-12

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

" Keywords
syn keyword BmcKeywords BASECHAIN_1D BOUNDARY COUPLING COUPLINGS DOMAIN FRICTION GEOMETRY HYDRAULICS INITIAL OUTPUT PARALLEL PARAMETER PHYSICAL_PROPERTIES PROJECT SECTION_COMPUTATION SOURCE EXTERNAL_SOURCE SPECIAL_OUTPUT INNER_BOUNDARY STRINGDEF BASEPLANE_2D

syn keyword BmcAttr author CFL console_time_step cross_section_order date default_friction downstream_interface downstream_subdomain file initial_time_step internal_levees level maximum_time_step max_interval minimum_water_depth min_interval name number_threads output_time_step region_name restart_time_step slope string title total_run_time type upstream_interface upstream_subdomain width multiregion cross_section side wse cross_sections node_ids
 
syn match BmcComment '//.*'

hi link bmcVariable Identifier
hi link BmcAttr     SpecialChar
hi link BmcKeywords Keyword

hi link BmcComment  Comment
