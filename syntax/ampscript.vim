if exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword ampStatement var set if then else elseif endif for to downto next output outputline
syn keyword ampOperator and or not
syn match   ampOperator "==\|!="
syn keyword ampBoolean true false
syn match   ampNumber "\<-\?\d\+\(\.\d\+\)\?\>"

syn region  ampString start=+"+ skip=+""+ end=+"+
syn region  ampString start=+'+ skip=+''+ end=+'+
syn region  ampComment start="/\*" end="\*/"

syn match   ampVariable  "@[A-Za-z_][A-Za-z0-9_]*"
syn match   ampSystemVar "@@[A-Za-z_][A-Za-z0-9_]*"
syn match   ampDelimiter "%%\[\|\]%%\|%%=\|=%%"

syn keyword ampFunction Lookup LookupRows LookupOrderedRows LookupOrderedRowsCS ClaimRow
syn keyword ampFunction InsertDE UpdateDE UpsertDE DeleteDE DeleteContact
syn keyword ampFunction AttributeValue v Concat Format FormatDate FormatCurrency FormatNumber
syn keyword ampFunction Now DateAdd DateDiff DatePart StringToDate StringToNumber
syn keyword ampFunction Length IndexOf Substring Replace ReplaceList RegExMatch
syn keyword ampFunction Uppercase Lowercase ProperCase Trim Char GUID Random
syn keyword ampFunction Add Subtract Multiply Divide Mod Modulo IsNull Empty
syn keyword ampFunction Row RowCount Field FieldName DataExtensionRowCount
syn keyword ampFunction TreatAsContent TreatAsContentArea ContentBlockByKey ContentBlockByName ContentBlockById
syn keyword ampFunction Redirect RedirectTo RaiseError RequestParameter QueryParameter
syn keyword ampFunction HTTPGet HTTPPost HTTPRequestHeader Base64Encode Base64Decode MD5 SHA256 SHA512
syn keyword ampFunction EncryptSymmetric DecryptSymmetric URLEncode Escape
syn keyword ampFunction CloudPagesURL MicrositeURL IsEmailAddress BuildRowSetFromXML BuildRowSetFromString
syn keyword ampFunction BeginImpressionRegion EndImpressionRegion ImpressionRegionName
syn keyword ampFunction RetrieveSalesforceObjects CreateSalesforceObject UpdateSingleSalesforceObject
syn keyword ampFunction CreateObject SetObjectProperty AddObjectArrayItem InvokeRetrieve InvokeUpdate InvokeCreate InvokeDelete
syn keyword ampFunction SendSMS GetSendTime

hi def link ampStatement     Statement
hi def link ampOperator      Operator
hi def link ampBoolean       Boolean
hi def link ampNumber        Number
hi def link ampString        String
hi def link ampComment       Comment
hi def link ampVariable      Identifier
hi def link ampSystemVar     Special
hi def link ampDelimiter     PreProc
hi def link ampFunction      Function

let b:current_syntax = "ampscript"

