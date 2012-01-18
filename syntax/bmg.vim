" Vim syntax file
" Language: Basement Configuration
" Maintainer: Michel Kuhlmann
" Last Change: Tuesday, 2012-01-17

if exists("b:current_syntax")
  finish
endif

"--------------------------------------------------------------------------------
" Folding
"--------------------------------------------------------------------------------
let bmc_syntax_folding = 1
if exists("g:r_syntax_folding")
  setlocal foldmethod=syntax
endif
if exists("g:bmc_syntax_folding")
  syn region bmcRegion matchgroup=Delimiter start=/{/ matchgroup=Delimiter end=/}/ transparent contains=ALLBUT,bmcError,bmcBraceError,bmcParenError fold
  syn region rRegion matchgroup=Delimiter start=/(/ matchgroup=Delimiter end=/)/ transparent contains=ALLBUT,rError,rBraceError,rCurlyError fold
endif

syn match bmcError      "[)\]}]"
syn match bmcBraceError "[)}]" contained
syn match bmcParenError "[\]}]" contained
syn match rCurlyError "[)\]]" contained

"--------------------------------------------------------------------------------
" Keyword highlighting
"--------------------------------------------------------------------------------
" Keywords
syn keyword BmgKeywords CROSS_SECTION
syn keyword BmgAttr active_range bottom_range distance_coord friction_coefficients friction_ranges interpolation_fixpoints left_point_global_coords name node_coords orientation_angle reference_height 

syn match BmcComment '//.*'

hi link BmgAttr     SpecialChar
hi link BmgKeywords Keyword
hi link BmcComment  Comment
