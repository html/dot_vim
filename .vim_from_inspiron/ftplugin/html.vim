if exists('did_ftplugin') | finish | endif
let g:did_ftplugin = 1

setlocal noet
setlocal iskeyword+='-'
let g:html_tag_case='l'
let g:no_html_tab_mapping = 1
"let g:html_map_leader=0

"nmap dt lF<df>
"nm dp lF d2f"
"so html/HTML.vim
"so html/xml.vim
"echoerr "hello world"
runtime ftplugin/xml.vim
