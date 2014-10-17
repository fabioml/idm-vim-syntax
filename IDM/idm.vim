setlocal iskeyword+=-

syn keyword Keyword if-op-attr 
syn keyword Keyword not-match 
syn keyword Keyword do-append-xml-element 
syn keyword Keyword do-if 
syn keyword Keyword arg-string
syn keyword Keyword if-operation
syn keyword Keyword if-class-name

syn match Boolean /\vTRUE|FALSE/

syn region string1 start="\v\'" end="\v\'" contained
syn region string2 start="\v\"" end="\v\"" contained 

syn region ifRegion start="\v\s+\(" end="\v\)" contains=string1,string2,Keyword
syn match ruleSelected /Rule selected/
syn match ruleRejected /Rule rejected/

syn region xmlRegion start="\v\<" end="\v\>" fold contains=string1,string2
syn match evaluatingRule /Evaluating selection criteria for rule \'.*\'/ contains=string1
syn match applyingRule /Applying rule \'.*\'/ contains=string1
syn region statusLog start="\vDirXML Log" end="\vStatus:" fold

syn region policyName start="\v\%\d+" end="\v\%" contained 
syn region applyingPolicy start="\vApplying policy\: \%\+C" end="\-C\." contains=policyName

hi def link string1 String
hi def link string2 String
hi def link ifRegion Conditional 
hi def link xmlRegion Label
hi def link ruleSelected Todo
hi def link ruleRejected Identifier
hi def link evaluatingRule PreCondit
hi def link applyingRule Function
hi def link policyName Underlined
hi def link statusLog Debug
