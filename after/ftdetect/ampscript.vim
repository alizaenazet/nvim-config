" AMPscript syntax highlighting for Neovim

if exists("b:current_syntax")
  finish
endif

" AMPscript block delimiters
syntax match ampscriptBlockDelimiter /%%\[\|]%%/
syntax match ampscriptInlineDelimiter /%%=\|=%%/

" Keywords
syntax keyword ampscriptKeyword VAR SET IF THEN ELSE ELSEIF ENDIF
syntax keyword ampscriptKeyword FOR TO DOWNTO DO NEXT
syntax keyword ampscriptKeyword OUTPUT CONTENTAREA

" Common AMPscript functions
syntax keyword ampscriptFunction Lookup LookupRows LookupOrderedRows
syntax keyword ampscriptFunction Row RowCount Field
syntax keyword ampscriptFunction AttributeValue
syntax keyword ampscriptFunction Empty IsNull
syntax keyword ampscriptFunction Concat FormatDate
syntax keyword ampscriptFunction AddDays DateDiff
syntax keyword ampscriptFunction Lowercase Uppercase ProperCase
syntax keyword ampscriptFunction Substring Replace
syntax keyword ampscriptFunction Trim Length

" Variables: @firstName, @customerId, etc.
syntax match ampscriptVariable /@[A-Za-z_][A-Za-z0-9_]*/

" Strings and numbers
syntax region ampscriptString start=/"/ skip=/\\"/ end=/"/
syntax match ampscriptNumber /\<\d\+\>/

" Comments inside AMPscript blocks
syntax region ampscriptComment start=/\/\*/ end=/\*\//

" Highlight groups
highlight default link ampscriptBlockDelimiter Delimiter
highlight default link ampscriptInlineDelimiter Delimiter
highlight default link ampscriptKeyword Keyword
highlight default link ampscriptFunction Function
highlight default link ampscriptVariable Identifier
highlight default link ampscriptString String
highlight default link ampscriptNumber Number
highlight default link ampscriptComment Comment

let b:current_syntax = "ampscript"

