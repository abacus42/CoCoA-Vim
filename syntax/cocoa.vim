" Vim syntax file
" Language: CoCoA
" Maintainer: Florian Walsh

if exists("b:current_syntax")
  finish
endif

syntax case ignore

"Keywords
syn keyword Keywords define enddefine if then elif else endif for endfor foreach endforeach in to package endpackage alias export
syn keyword Keywords return while endwhile do break using endusing
syn keyword Boolean True False
syn keyword Operator Not And Or
syn keyword Special \n $

syntax match Assignement ":="
syntax match EqualityCheck "="
syntax region Strings start=/\v"/ skip=/\v\\./ end=/\v"/

syntax region MultiComment start="\v/\*" end="\v\*/"
syntax match LineComment "^//.*"
syntax match DashComment "--.*$"

syntax match Number "\v<\d+>"
syntax match Number "\v<\d+\.\d+>"
syntax match Number "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match Number "\v<0x\x+([Pp]-?)?\x+>"
syntax match Number "\v<0b[01]+>"
syntax match Number "\v<0o\o+>"

"Highlight
hi def link Keywords Statement
hi link Strings String
hi link MultiComment Comment
hi link LineComment Comment
hi link DashComment Comment
hi link Number Number
