"=============================================================================
" File:       <! expand("%:t") !>
" Maintainer: <! g:author !> <<! g:email !>>
" License:    <+ LICENSE +>
" Created:    <! strftime('%F %T %Z') !>
" GetLatestVimScripts: <+ ID +> 1 :AutoInstall: <! expand("%:t") !>
"-----------------------------------------------------------------------------
" Description:
"   <+ DESCRIPTION +>
"
" Usage:
"   <+ USAGE +>
"
" Notes:
"   <+ NOTES +>
"-----------------------------------------------------------------------------
" Installation:
"   <+ INSTALLATION +>
"
" History:
"   <+ HISTORY +>
"
" TODO:
"   <+ TODO +>
"=============================================================================
<? let s:fn = tolower(substitute(expand("%:t"), ".vim", "", "")) ?>
" Avoid reinclusion
if exists("g:loaded_<! s:fn !>")
    finish
endif
let g:loaded_<! s:fn !> = 1

<+ CODE +>

" vim:<! g:footer !>:<? g:footer ?>
