" Vim syntax file
" Language: CoCoA
" Maintainer: Florian Walsh, Julian Danner

if exists("b:current_syntax")
  finish
endif

syntax case match

"Keywords
syn keyword Conditional then elif else Then Else Elif
syn keyword Repeat do to repeat until for endfor Do Repeat Until For EndFor
syn keyword Operator + - * ^ > < >= <= / len isin type IsIn Type
syn keyword Exception try uponerror endtry Try UponError EndTry
syn keyword StorageClass TopLevel ref
syn keyword Keyword println print on use PrintLn Print On Use

syn keyword Keywords package endpackage alias export Package EndPackage Alias Export
syn keyword Keywords break return Break Return
syn keyword Boolean true false True False
syn keyword Operator not and or Not And Or

syn keyword Include source Source SourceRegion
syn keyword Type STRING ERROR FUNCTION IDEAL INT INTMAP ISTREAM LIST MAT MATRIXROW MODULE MODULEELEM OSTREAM RAT RATFUN RECORD RING RINGELEM RINGHOM STRING TYPE VOID
syn keyword Structure record Record
syn keyword Debug assert

" Folding
syn region DefineFold matchgroup=Define start="\<define\>" end="\<enddefine\>" transparent fold
syn region DefineFold matchgroup=Define start="\<Define\>" end="\<EndDefine\>" transparent fold
syn region ForFold matchgroup=Repeat start="\<for\>" end="\<endfor\>" transparent fold
syn region ForFold matchgroup=Repeat start="\<For\>" end="\<EndFor\>" transparent fold
syn region ForeachFold matchgroup=Repeat start="\<foreach\>" end="\<endforeach\>" transparent fold
syn region ForeachFold matchgroup=Repeat start="\<Foreach\>" end="\<EndForeach\>" transparent fold
syn region WhileFold matchgroup=Repeat start="\<while\>" end="\<endwhile\>" transparent fold
syn region WhileFold matchgroup=Repeat start="\<While\>" end="\<EndWhile\>" transparent fold
syn region IfFold matchgroup=Conditional start="\<if\>" end="\<endif\>" transparent fold
syn region IfFold matchgroup=Conditional start="\<If\>" end="\<EndIf\>" transparent fold


syntax match Assignment ":="
syntax match EqualityCheck "="
" multiline string highlighting disabled due to highlighting errors in cocoa5 output windows
"syntax region Strings start=/\v"/ skip=/\v\\./ end=/\v"/
syntax match Strings "\".\{-}\(\\\)\@<!\""

syntax region MultiComment start="\v/\*" end="\v\*/" contains=todo,note fold
syntax match LineComment "//.*" contains=todo,note
syntax match DashComment "--.*$" contains=todo,note,ManualExample
syntax match todo "TODO" contained
syntax match note "NOTE" contained

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

syntax region ManualDescr start="^--============( .* )=============--$" end="^--============( end .* )=============--$" contains=ManualExample
syntax region ManualExample start="^------<  example  >------$" end="------< end example >------" contains=ALL keepend
syntax match ManualQM "^\s*?.*$"

"fancy highlighting of startup banner!
syntax region CocoaBanner start="^   ______      ______      ___         ______$" end="^`____/`____/`____/`____/_/  |_|    /_____/$" contains=CocoaBannerMinus,CocoaBanner5 keepend
syntax match CocoaBannerMinus       "______\ze/"
syntax match CocoaBannerMinus "_ \zs/_____/"
syntax match CocoaBanner5   "  ______$"
syntax match CocoaBanner5    "/ ____/$"
syntax match CocoaBanner5   "/___ `$"
syntax match CocoaBanner5   "___/ /$"
syntax match CocoaBanner5 "/_____/$"
syntax match CocoaBannerLibs "^With CoCoALib.*"
"end="^indent(VersionInfo(), 2); -- for information about this version$"

"Highlight
hi link funcdecl Function
hi link packageName Identifier
hi link Keywords Statement
hi link Define Define
hi link Strings String
hi link DashComment Comment
hi link MultiComment Comment
hi link LineComment Comment
hi link todo Todo
hi link note Todo
hi link Number Number
hi link Boolean Boolean

hi link Error Error
hi link Warning WarningMsg

hi link ManualDescr Comment
hi link ManualQM Comment

hi def CocoaBanner term=bold gui=bold guifg=#c31a18
hi def CocoaBannerMinus gui=bold guifg=#0087f3
hi def CocoaBanner5 term=bold gui=bold,italic guifg=#a02c41
hi def CocoaBannerLibs term=bold gui=bold guifg=#5c4017
hi link CocoaBanner CocoaBanner
hi link CocoaBannerMinus CocoaBannerMinus
hi link CocoaBanner5 CocoaBanner5
hi link CocoaBannerLibs  Comment
