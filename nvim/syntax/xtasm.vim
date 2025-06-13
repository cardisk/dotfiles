" Vim syntax file
" Language: xtasm

" Usage Instructions
" Put this file in .vim/syntax/xtasm.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.xt set filetype=xtasm

if exists("b:current_syntax")
  finish
endif

set iskeyword=a-z,A-Z
syntax keyword xtasmTodos TODO XXX FIXME NOTE

" Language keywords
" syntax keyword xtasmKeywords add sub mul mov break exit jmp
syntax match xtasmKeywords /\(add\|sub\|mul\|mov\|break\|exit\|jmp\)/

" Language statements
" syntax keyword xtasmStatements enum loop for while if else in end
syntax match xtasmStatements /\(enum\|loop\|for\|while\|if\|else\|in\|end\)/

" Comments
syntax region xtasmCommentLine start="--" end="$"   contains=xtasmTodos

" Special
syntax match xtasmSpecial /[\;\?\.]/

" Labels
syntax match xtasmLabel /\:\w\+/ 

" Sections
syntax match xtasmSection /\#\w\+/

" Variables
syntax match xtasmVariable /\.\w\+/

" Registers
syntax match xtasmRegister /\$\w\+/

" Number literals
syntax match xtasmNumber /[\s\n]*\d\+[\s\n]*/

" Set highlights
highlight default link xtasmTodos Todo
highlight default link xtasmKeywords Keyword
highlight default link xtasmStatements Statement
highlight default link xtasmCommentLine Comment
highlight default link xtasmSpecial Special
highlight default link xtasmLabel Constant 
highlight default link xtasmSection PreProc
highlight default link xtasmVariable Identifier
highlight default link xtasmRegister Special
highlight default link xtasmNumber Number 

let b:current_syntax = "xtasm"
