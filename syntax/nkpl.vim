" Syntax highlighting for NKPL modeling based language (.nkpl files)
if exists("b:current_syntax")
    finish
endif

" Clear old syntax
syn clear

syn match nkplBAExp "∨\|∧\|⊤\|⊥"
syn match nkplNetKAT "∅\|ε\|δ\|=\|≠\|←\|∪\|⋅\|≡\|≢"
syn match nkplNetKATStar "⋆"
syn match nkplKey "@"
syn match nkplNeg "¬"
syn match nkplLambda "λ"
syn match nkplEba "?"
syn match nkplInteger "\<\d\+\>"

syn keyword nkplConstruct any do let log rep drop skip
syn keyword nkplCommand import check 

" Comments and Strings (assuming -- for comments and " for strings)
syn match nkplComment "--.*$"
syn region nkplString start=+"+ skip=+\\"+ end=+"+ keepend

" Highlighting rules
hi def link nkplBAExp Operator
hi def link nkplNetKAT Operator
hi nkplNetKATStar ctermfg=red guifg=red
hi def link nkplKey Special
hi def link nkplNeg Operator
hi def link nkplLambda Special
hi def link nkplEba Special
hi def link nkplInteger Constant 
hi def link nkplComment Comment
hi def link nkplString String
hi def link nkplConstruct Statement
hi def link nkplCommand Statement

" Set file type detection
au BufRead,BufNewFile *.nkpl set filetype=nkpl

" Link to the language's main syntax
let b:current_syntax = "nkpl"
