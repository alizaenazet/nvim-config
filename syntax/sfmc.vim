runtime! syntax/html.vim
unlet! b:current_syntax

syn include @ampScript syntax/ampscript.vim

syn region sfmcAmpBlock  matchgroup=ampDelimiter start="%%\[" end="\]%%" contains=@ampScript keepend
syn region sfmcAmpInline matchgroup=ampDelimiter start="%%="  end="=%%"  contains=@ampScript keepend
syn match  sfmcPersonalization "%%[A-Za-z_@][A-Za-z0-9_@]*%%"

hi def link sfmcPersonalization Constant
let b:current_syntax = "sfmc"
