setlocal indentexpr=GetCocoaIndent()
setlocal autoindent

function! s:GetPrevNonCommentLineNum()
    " Skip lines starting with a comment
    let SKIP_LINES = '^\s*\(\((\*\)\|\(\*\ \)\|\(\*)\)\|{\|}\)'

    let nline = v:lnum
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
    let prev_codeline_num = nline -1
    let prev_codeline = getline( prev_codeline_num )
    let indnt = indent( prev_codeline_num )

    if prev_codeline =~ '.*\s\(do\|then\|else\|elif\)\s*$'
      let indnt = indnt + &shiftwidth
    endif

    if prev_codeline =~ '^\s*define\s.*)\s*$'
      let indnt = indnt + &shiftwidth
    endif

    if prev_codeline =~ '^\s*alias\s*$'
      let indnt = indnt + &shiftwidth
    endif

    if this_codeline =~ '^\s*\(endif\|endwhile\|endfor\|endforeach\|enddefine\|endusing\);\s*$'
      let indnt = indnt - &shiftwidth
    endif

    return indnt
endfunction


