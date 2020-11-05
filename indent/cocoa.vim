setlocal indentexpr=GetCocoaIndent()
setlocal autoindent

function! s:GetPrevNonCommentLineNum(line_num)
    " Skip lines starting with a comment
    let SKIP_LINES = '^\s*\(--\|//\)'

    let nline = a:line_num
    while nline > 0
        let nline = prevnonblank(nline-1)
        if getline(nline) !~? SKIP_LINES
            break
        endif
    endwhile

    return nline
endfunction

function! GetCocoaIndent()
    let nline = v:lnum
    if nline  == 0
        return 0
    endif

    let this_codeline = getline(nline)
    let prev_codeline_num = s:GetPrevNonCommentLineNum(nline)
    let prev_codeline = getline( prev_codeline_num )
    let indnt = indent( prev_codeline_num )

    if prev_codeline =~ '.*\s*\(do\|then\|else\)\s*\(--.*\|//.*\)*$'
      let indnt = indnt + &shiftwidth
    endif

    if prev_codeline =~ '^\s*define\s.*)\s*'
      let indnt = indnt + &shiftwidth
    endif

    if this_codeline =~ '^\s*\(endif\|endwhile\|endtry\|endfor\|endforeach\|enddefine\|endusing\|else\|elif\)'
      let indnt = indnt - &shiftwidth
    endif

    return indnt
endfunction


