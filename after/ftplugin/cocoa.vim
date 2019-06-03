if exists('g:repl')
    let cocoa_repl = {'bin': 'cocoa5', 'args': [], 'syntax': 'cocoa', 'title': 'CoCoA REPL'}
    call repl#define_repl('cocoa', cocoa_repl, 'force')
endif
