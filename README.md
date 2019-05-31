# CoCoA-Vim

This Plugin provides basic vim support for our favourite computer algebra system [CoCoA](http://cocoa.dima.unige.it/).

## Installation

To install CoCoA-Vim it is recommended to use one of the popular package managers for Vim.

### vim-plug

```vim
Plug 'abacus42/CoCoA-Vim'
```

### Snippets
To use snippets you have to install [neosnippet](https://github.com/Shougo/neosnippet.vim) and then set the path to the
file cocoa.snip in you vim config. For example:

```vim
" specify the location of cocoa.snip
let g:neosnippet#snippets_directory='~/.vim/plugged/CoCoA-Vim/snippets'
```

### Terminal/REPL support

If you want to execute you CoCoA functions directly in vim you need to compile CoCoA with readline and install
the plugin [repl.nvim](https://gitlab.com/HiPhish/repl.nvim).
