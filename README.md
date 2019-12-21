# CoCoA-Vim

This Plugin provides <s>basic</s> vim support for our favourite computer algebra system [CoCoA](http://cocoa.dima.unige.it/).
Its features include:
  * syntax highlighting
  * auto indentation
  * move cursor to matching keyword using %
  * folding
  * snippets for [neosnippet](https://github.com/Shougo/neosnippet.vim)
  * execution in a cocoa terminal window
  * completion of all built-in cocoa functions using [deoplete](https://github.com/Shougo/deoplete.nvim) and [deoplete-dictionary](https://github.com/deoplete-plugins/deoplete-dictionary)

## Installation

To install CoCoA-Vim it is recommended to use one of the popular package managers for vim, e.g. [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'abacus42/CoCoA-Vim'
```

### Required Plugins
To use all features, the following plugins need to be installed:
  * [neosnippet](https://github.com/Shougo/neosnippet.vim)
  * [deoplete](https://github.com/Shougo/deoplete.nvim) and [deoplete-dictionary](https://github.com/deoplete-plugins/deoplete-dictionary)
  * [repl.nvim](https://gitlab.com/HiPhish/repl.nvim)
    To execute your CoCoA functions using the terminal included in vim, you need to compile CoCoA with readline.
    Also remember to set the location of the cocoa5 executable in your \$PATH variable.


To use snippets and the completion of cocoa functions, the path to CoCoA-Vim needs to be set. By default it assumes the plugin is installed in ~/.config/nvim/plugged
```vim
" specify the location of CoCoA-Vim/
let g:cocoavim#directory='~/.config/nvim/plugged'
```
