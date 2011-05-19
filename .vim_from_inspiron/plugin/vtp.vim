"
"
" Vim text preprocessor
"
"
finish

function! vtp#Vtp2vim(text)
    let i = 0
    let output = ''
    let indentlevel = 0
    let indentstr = '  '
    let eol = "\n"
    for k in split(a:text,'\(<?\|?>\)',1)
        if i % 2 " k is statement
            if vtp#IsEndStatement(k) | let indentlevel -= 1 | endif
            if vtp#IsOutStatement(k)
                "let output .= repeat(indentstr,indentlevel) . "redraw" . eol
                let output .= repeat(indentstr,indentlevel) . vtp#StatementOutput(k) . eol
            else
                if match(k,"\n") != -1
                    let output .= repeat(indentstr,indentlevel) . vtp#RemoveSomeIndent(k) . eol
                else 
                    let output .= repeat(indentstr,indentlevel) . k . eol
                endif
            endif
            if vtp#IsBeginStatement(k) | let indentlevel += 1 | endif
        elseif !vtp#Empty(k) " k is a string for output and is no empty
            let output .= repeat(indentstr,indentlevel) . vtp#Output(k) . eol
        endif
        let i+=1
    endfor
    return output
endfunction

function! vtp#Output(text)
    return vtp#Empty(a:text)
        \ ? '' : "call vtp#Insert(\"" . substitute(vtp#Trim(a:text),"\n",'\\n','g') ."\")"
endfunction

function! vtp#StatementOutput(text)
    return vtp#Empty(a:text)
        \ ? '' : "call vtp#Insert(" . vtp#Trim(substitute(a:text,'^=\s*','','')) .")"
endfunction

function! vtp#IsBeginStatement(text)
    return match(a:text,'^\(for\|if\|else\)') != -1
endfunction

function! vtp#IsEndStatement(text)
    return match(a:text,'^\(end\|else\)') != -1
endfunction

function! vtp#IsOutStatement(text)
    return match(a:text,'^=') != -1
endfunction

function! vtp#RemoveSomeIndent(text)
    return vtp#Empty(a:text)
        \ ? '' : vtp#Trim(substitute(a:text,"\n".matchstr(a:text,'\s\+'),"\n",'g'))
endfunction

function! vtp#Insert(text)
    exe "normal a" . a:text
endfunction

function! vtp#Empty(text)
    "echo '$$>'.a:text."<$$\n"
    "echo '>>>'.substitute(a:text,'\(^[ \t\n]\+\|[ \t\n]\+$\)','','g') . "<<<\n"
"    echo '###>'.!strlen(vtp#Trim(a:text)) .'<###'
    return !strlen(vtp#Trim(a:text))
endfunction

function! vtp#Trim(text)
    return substitute(a:text,'\(^[ \t\n]\+\|[ \t\n]\+$\)','','g')
endfunction

function! vtp#Process(filename)

    exe vtp#Vtp2vim(join(readfile(a:filename),"\n"))
"    return
    call writefile(split(vtp#Vtp2vim(join(readfile(a:filename),"\n")),"\n"),'/home/html/temp/output.vim')
endfunction


call vtp#Process('/home/html/temp/input.txt')


"exe join(readfile('/home/html/temp/output.vim'),"\n")
