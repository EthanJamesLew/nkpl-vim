" Syntax highlighting for KAT modeling based language (.nkpl files)
if exists("b:current_syntax")
    finish
endif

" Clear old syntax
syn clear

" Define special characters and operators
syn match nkplOperator "⋅" display
syn match nkplOperator "∪" display
syn match nkplOperator "∧" display
syn match nkplOperator "≠" display
syn match nkplOperator "≡" display
syn match nkplOperator "≢" display
syn match nkplOperator "¬" display

" Define conditions
syn match nkplCondition "@[a-zA-Z0-9_=<>?]+"

" Define comments
syn match nkplComment "--.*" display

" Define strings
syn region nkplString start=+"+ skip=+\\"+ end=+"+ keepend

" Highlighting rules
hi def link nkplOperator Operator
hi def link nkplCondition Identifier
hi def link nkplComment Comment
hi def link nkplString String

" Set file type detection
au BufRead,BufNewFile *.nkpl set filetype=nkpl

" Link to the language's main syntax
let b:current_syntax = "nkpl"

