set foldmethod=marker
set foldnestmax=1
set foldmarker=BEGIN,END

set foldtext=HtmlFoldLabel()
"if not set
"set commentstring=<!--%s-->

"let g:HtmlFoldTagsShow = 
"let g:HtmlAttribsShow = 


function! HtmlFoldLabel()
  let [lbrace,rbrace] = split(&foldmarker,',')
  let start = v:foldstart
"  let end = min([v:foldend,v:foldstart+5]);
"  return join(',',getline(start,end))
  let getcontent = matchstr(getline(v:foldstart),printf(&commentstring,'\s*'.lbrace.'\s*\zs\(.*\)\ze'))
  if(strlen(getcontent) == 0) | let getcontent = getline(v:foldstart)  | endif"; 
  let linestart = substitute(v:folddashes, ".", '»', 'g')
  return linestart . " " . getcontent
endfunction

finish
function! GetElemsWithAttrs(text,allowed_elements,allowed_attribs)
  return matchlist(text,'<\([a-zA-Z]\)[^/]>')
endfunction
echo GetElemsWithAttrs('<div id="asdf" class="jkl"></div>',['div'],['style','class'])
