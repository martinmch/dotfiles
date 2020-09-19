" Vim syntax file for Fasto.
" Created by Oleksandr Shturmov <oleks@oleks.info> on November 1, 2014.
" Modified by Martin Christiansen <me@martinmch.com> on February 14, 2014.

if exists("b:current_syntax")
  finish
end

syn keyword fastoKeyword fun fn let in
syn keyword fastoOperator op not
syn keyword fastoConditional if then else
syn keyword fastoBoolean true false
syn keyword fastoType int char bool
syn keyword fastoFunction read write iota replicate map reduce scan filter

syn match fastoString "\"\([ -!#-&(-[\]-~]\|\\[\x0-\x7f]\)*\""
syn match fastoIdentifier "[a-zA-Z][a-zA-Z0-9|_]*"
syn match fastoComment "//.*$"
syn match fastoOperator "[+|-|*|/|&&|\|\||=>|==|<|not|~|]"

highlight link fastoKeyword Keyword
highlight link fastoType Type
highlight link fastoFunction Function
highlight link fastoBoolean Boolean
highlight link fastoConditional Conditional
highlight link fastoOperator Operator

highlight link fastoString String

highlight link fastoIdentifier Identifier

highlight link fastoComment Comment
