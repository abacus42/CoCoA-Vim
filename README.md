# CoCoA-Vim

This Plugin provides <s>basic</s> vim support for our favourite computer algebra system [CoCoA](http://cocoa.dima.unige.it/).
Its features include:
  * syntax highlighting
  * auto indentation
  * folding
  * snippets for neosnippet
  * execution in a cocoa terminal window

## Installation

To install CoCoA-Vim it is recommended to use one of the popular package managers for vim.

### vim-plug

```vim
Plug 'abacus42/CoCoA-Vim'
```

### Snippets
To use snippets you have to install [neosnippet](https://github.com/Shougo/neosnippet.vim) and then set the path to the
file cocoa.snip in you vim config. For example:

```vim
" specify the location of cocoa.snip
let g:neosnippet#snippets_directory='~/.config/nvim/plugged/CoCoA-Vim/snippets'
```

### Terminal/REPL support

To execute your CoCoA functions using the terminal included in vim, you need to compile CoCoA with readline and install
the plugin [repl.nvim](https://gitlab.com/HiPhish/repl.nvim). Remember to set the location of the cocoa5 executable in
your \$PATH variable.
