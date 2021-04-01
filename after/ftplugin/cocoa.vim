" define matching pairs for matchit and matchup
let b:match_words='\<define\>:\<enddefine\>,'
let b:match_words.='\<for\>:\<endfor\>,'
let b:match_words.='\<foreach\>:\<endforeach\>,'
let b:match_words.='\<while\>:\<endwhile\>,'
let b:match_words.='\<try\>:\<endtry\>,'
let b:match_words.='\<package\>:\<endpackage\>,'
let b:match_words.='\<if\>:\<elif\>:\<else\>:\<endif\>,'
let b:match_words.='\</*\>:\<*/\>,'

" set default location of the plugin
if exists('g:cocoavim#directory') == 0
    let g:cocoavim#directory='~/.config/nvim/plugged'
endif

" set path to snippets
if g:loaded_neosnippet
    if exists('g:neosnippet#snippets_directory')
        let g:neosnippet#snippets_directory.=','.g:cocoavim#directory.'/CoCoA-Vim/snippets'
    else
        let g:neosnippet#snippets_directory=g:cocoavim#directory.'/CoCoA-Vim/snippets'
    endif
endif

" set path to wordlist
if g:loaded_deoplete
    execute 'setlocal dictionary+='.g:cocoavim#directory.'/CoCoA-Vim/wordlist.txt'
    call deoplete#custom#source('dictionary', 'matchers',  ['matcher_head'])
endif

if exists('g:repl')
    let cocoa_repl = {'bin': 'cocoa5', 'args': [], 'syntax': 'cocoa', 'title': 'CoCoA REPL'}
    call repl#define_repl('cocoa', cocoa_repl, 'force')
endif

if exists('g:loaded_ripple')
    let g:ripple_repls.cocoa = 'cocoa5'
endif
