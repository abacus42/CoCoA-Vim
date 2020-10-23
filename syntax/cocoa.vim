" Vim syntax file
" Language: CoCoA
" Maintainer: Florian Walsh, Julian Danner

if exists("b:current_syntax")
  finish
endif

syntax case ignore

"Keywords
syn keyword Conditional then elif else else in
syn keyword Repeat do to repeat until
syn keyword Operator + - * ^ > < >= <= / len isin
syn keyword Exception try uponerror endtry
syn keyword StorageClass TopLevel ref
syn keyword Keyword println print on use

syn keyword Keywords package endpackage alias export
syn keyword Keywords break return
syn keyword Boolean true false
syn keyword Operator not and or

syn keyword Include source SourceRegion
syn keyword Type STRING ERROR FUNCTION IDEAL INT INTMAP ISTREAM LIST MAT MATRIXROW MODULE MODULEELEM OSTREAM RAT RATFUN RECORD RING RINGELEM RINGHOM STRING TYPE VOID


" Folding
syn region DefineFold matchgroup=Define start="\<define\>" end="\<enddefine\>" transparent fold
syn region ForFold matchgroup=Repeat start="\<for\>" end="\<endfor\>" transparent fold
syn region ForeachFold matchgroup=Repeat start="\<foreach\>" end="\<endforeach\>" transparent fold
syn region WhileFold matchgroup=Repeat start="\<while\>" end="\<endwhile\>" transparent fold
syn region IfFold matchgroup=Conditional start="\<if\>" end="\<endif\>" transparent fold


syntax match Assignement ":="
syntax match EqualityCheck "="
" multiline string highlighting disabled due to highlighting errors in cocoa5 output windows
"syntax region Strings start=/\v"/ skip=/\v\\./ end=/\v"/
syntax match Strings "\".\{-}\(\\\)\@<!\""

syntax region MultiComment start="\v/\*" end="\v\*/"
syntax match LineComment "//.*"
syntax match DashComment "--.*$"
syntax match TodoComment "--TODO.*$"
syntax match NoteComment "--NOTE.*$"
syntax region Error start="--> ERROR:.*$" end="--> *\^*$"
syntax region Warning start="--> WARNING:.*$" end="--> *\^*$"

syntax match Number "\v<\d+>"
syntax match Number "\v<\d+\.\d+>"
syntax match Number "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match Number "\v<0x\x+([Pp]-?)?\x+>"
syntax match Number "\v<0b[01]+>"
syntax match Number "\v<0o\o+>"

syntax match packageName "\$[A-Za-z0-9/]*\."
syntax match packageName "/\<\$.*\>/"

syntax match funcdecl "\v(\h[a-zA-Z0-9_]*)\ze(\s?\()"

"Highlight
hi link funcdecl Function
hi link packageName Identifier
hi link Keywords Statement
hi link Define Define
hi link Strings String
hi link DashComment Comment
hi link MultiComment Comment
hi link LineComment Comment
hi link TodoComment Todo
hi link NoteComment Todo
hi link Number Number
hi link Boolean Boolean

hi link Error Error
hi link Warning WarningMsg
