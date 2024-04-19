" Syntax highlighting for NKPL modeling based language (.nkpl files)
if exists("b:current_syntax")
    finish
endif

" Clear old syntax
syn clear

" Define Operators
syn match nkplOperator "⋅\|∨\|∧\|∪\|ε\|δ\|⊤\|⊥\|=\|≠\|≡\|≢\|←\|⋆\|¬\|∅"

" Define Constructs
syn keyword nkplConstruct any do let log rep drop skip
syn keyword nkplCommand import check 

" Define special condition constructs and meta programming
syn match nkplCondition "@\|?"
syn match nkplLambda "λ"

" Define control structures
syn keyword nkplControlStr if then else case of where

" Comments and Strings (assuming -- for comments and " for strings)
syn match nkplComment "--.*$"
syn region nkplString start=+"+ skip=+\\"+ end=+"+ keepend

" Highlighting rules
hi def link nkplOperator Operator
hi def link nkplConstruct Statement
hi def link nkplCommand Statement
hi def link nkplCondition Special 
hi def link nkplLambda Special
hi def link nkplControlStr Keyword
hi def link nkplComment Comment
hi def link nkplString String

" Set file type detection
au BufRead,BufNewFile *.nkpl set filetype=nkpl

" Link to the language's main syntax
let b:current_syntax = "nkpl"
