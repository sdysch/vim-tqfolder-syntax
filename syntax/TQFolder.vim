" Vim syntax file for TQFolder (CAFCore)
" See http://vim.wikia.com/wiki/Creating_your_own_syntax_files#Install_the_syntax_file

" Quit when a syntax file was already loaded.
if exists("b:current_syntax")
	finish
endif

syn match celComment "#.*$"
syn match celCut ".cutExpression"
syn match celWeight ".weightExpression"
syn match celTitle ".title"
syn match booleanTrue "[tT]rue"
syn match booleanFalse "[fF]alse"

" start of new cutblock
syn match celCutStart "+.*{"

" new cutblock started by @*/Cut...
syn match celAtStart "@\*\/.[^{]*"

" opening of cut definitions
syn match celAngBracket "[<>]"

" tags <tagName=, doesn't work :(
syn match celTag "[a-zA-Z0-9]+"

syn match histStart "<<"

syn region celExpr start='"' end='"' 
syn region celExpr start="'" end="'" 

syn region alias start="$(" end=")"
syn region alias start='\[' end='\]'

syn match mathsExpr "fabs[^(]*"
syn match mathsExpr "sqrt[^(]*"
syn match mathsExpr "TH1F[^(]*"
syn match mathsExpr "TH2F[^(]*"

hi def link celComment          Comment
hi def link celCut              Statement
"hi def link celWeight           Identifier
hi def link celWeight           Statement
"hi def link celTitle            Special
hi def link celTitle            Statement
hi def link celExpr             String
hi def link celCutStart         ModeMsg
hi def link celAtStart          Tag
"hi def link celAngBracket       Comment
hi def link booleanTrue         Identifier
hi def link booleanFalse        Identifier
hi def link histStart           ModeMsg
hi def link alias               Operator
hi def link mathsExpr           Function

let b:current_syntax = "def"
