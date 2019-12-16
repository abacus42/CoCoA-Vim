let b:match_words='\<define\>:\<enddefine\>,'
let b:match_words.='\<for\>:\<endfor\>,'
let b:match_words.='\<foreach\>:\<endforeach\>,'
let b:match_words.='\<while\>:\<endwhile\>,'
let b:match_words.='\<try\>:\<endtry\>,'
let b:match_words.='\<package\>:\<endpackage\>,'
let b:match_words.='\<if\>:\<elif\>:\<else\>:\<endif\>'

if exists('g:repl')
    let cocoa_repl = {'bin': 'cocoa5', 'args': [], 'syntax': 'cocoa', 'title': 'CoCoA REPL'}
    call repl#define_repl('cocoa', cocoa_repl, 'force')
endif
