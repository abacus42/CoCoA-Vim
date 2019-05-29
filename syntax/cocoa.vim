" Vim syntax file
" Language: CoCoA
" Maintainer: Florian Walsh, Julian Danner

if exists("b:current_syntax")
  finish
endif

syntax case ignore

"Keywords
syn keyword Conditional if then elif else endif else using endusing in
syn keyword Repeat for endfor while endwhile foreach endforeach do to
syn keyword Operator + - * ^ > < >= <= / len isin IsIn IsZero Zero One IsOne
syn keyword Exception try uponerror endtry
syn keyword StorageClass TopLevel ref
syn keyword Keyword println PrintLn print Print

syn keyword Keywords define enddefine package endpackage alias export
syn keyword Keywords break return
syn keyword Boolean True False true false
syn keyword Operator Not And Or not and or

syn keyword Debug assert
syn keyword Include source

syntax match Assignement ":="
syntax match EqualityCheck "="
syntax region Strings start=/\v"/ skip=/\v\\./ end=/\v"/

syntax region MultiComment start="\v/\*" end="\v\*/"
syntax match LineComment "^//.*"
syntax match DashComment "--.*$"
syntax match todoComment "--TODO.*$"

syntax match Number "\v<\d+>"
syntax match Number "\v<\d+\.\d+>"
syntax match Number "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match Number "\v<0x\x+([Pp]-?)?\x+>"
syntax match Number "\v<0b[01]+>"
syntax match Number "\v<0o\o+>"

syntax match packageName "\$.*\."
syntax match packageName "/\<\$.*\>/"

syntax match funcdecl "\v[[:alpha:]_.]+\ze(\s?\()"

"Highlight
hi def link funcdecl Function
hi def link packageName Identifier
hi def link Keywords Statement
hi link Strings String
hi link MultiComment Comment
hi link LineComment Comment
hi link DashComment Comment
hi link todoComment Todo
hi link Number Number
