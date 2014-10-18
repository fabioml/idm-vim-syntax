setlocal iskeyword+=-

"https://www.novell.com/documentation/developer/dirxml/dirxmlbk/ref/dirxmlscript/ALL-ELEM.html
syn keyword Keyword arg-actions contained
syn keyword Keyword arg-association contained
syn keyword Keyword arg-component contained
syn keyword Keyword arg-conditions contained
syn keyword Keyword arg-dn contained
syn keyword Keyword arg-match-attr contained
syn keyword Keyword arg-node-set contained
syn keyword Keyword arg-object contained
syn keyword Keyword arg-password contained
syn keyword Keyword arg-string contained
syn keyword Keyword arg-value contained
syn keyword Keyword do-add-association contained
syn keyword Keyword do-add-dest-attr-value contained
syn keyword Keyword do-add-dest-object contained
syn keyword Keyword do-add-resource contained
syn keyword Keyword do-add-role contained
syn keyword Keyword do-add-src-attr-value contained
syn keyword Keyword do-add-src-object contained
syn keyword Keyword do-append-xml-element contained
syn keyword Keyword do-append-xml-text contained
syn keyword Keyword do-break contained
syn keyword Keyword do-clear-dest-attr-value contained
syn keyword Keyword do-clear-op-property contained
syn keyword Keyword do-clear-src-attr-value contained
syn keyword Keyword do-clear-sso-credential contained
syn keyword Keyword do-clone-op-attr contained
syn keyword Keyword do-clone-xpath contained
syn keyword Keyword do-delete-dest-object contained
syn keyword Keyword do-delete-src-object contained
syn keyword Keyword do-find-matching-object contained
syn keyword Keyword do-for-each contained
syn keyword Keyword do-generate-event contained
syn keyword Keyword do-if contained
syn keyword Keyword do-implement-entitlement contained
syn keyword Keyword do-move-dest-object contained
syn keyword Keyword do-move-src-object contained
syn keyword Keyword do-reformat-op-attr contained
syn keyword Keyword do-remove-association contained
syn keyword Keyword do-remove-dest-attr-value contained
syn keyword Keyword do-remove-resource contained
syn keyword Keyword do-remove-role contained
syn keyword Keyword do-remove-src-attr-value contained
syn keyword Keyword do-rename-dest-object contained
syn keyword Keyword do-rename-op-attr contained
syn keyword Keyword do-rename-src-object contained
syn keyword Keyword do-send-email contained
syn keyword Keyword do-send-email-from-template contained
syn keyword Keyword do-set-default-attr-value contained
syn keyword Keyword do-set-dest-attr-value contained
syn keyword Keyword do-set-dest-password contained
syn keyword Keyword do-set-local-variable contained
syn keyword Keyword do-set-op-association contained
syn keyword Keyword do-set-op-class-name contained
syn keyword Keyword do-set-op-dest-dn contained
syn keyword Keyword do-set-op-property contained
syn keyword Keyword do-set-op-src-dn contained
syn keyword Keyword do-set-op-template-dn contained
syn keyword Keyword do-set-src-attr-value contained
syn keyword Keyword do-set-src-password contained
syn keyword Keyword do-set-sso-credential contained
syn keyword Keyword do-set-sso-passphrase contained
syn keyword Keyword do-set-xml-attr contained
syn keyword Keyword do-start-workflow contained
syn keyword Keyword do-status contained
syn keyword Keyword do-strip-op-attr contained
syn keyword Keyword do-strip-xpath contained
syn keyword Keyword do-trace-message contained
syn keyword Keyword do-veto contained
syn keyword Keyword do-veto-if-op-attr-not-available contained
syn keyword Keyword do-while contained
syn keyword Keyword if-association contained
syn keyword Keyword if-attr contained
syn keyword Keyword if-class-name contained
syn keyword Keyword if-dest-attr contained
syn keyword Keyword if-dest-dn contained
syn keyword Keyword if-entitlement contained
syn keyword Keyword if-global-variable contained
syn keyword Keyword if-local-variable contained
syn keyword Keyword if-named-password contained
syn keyword Keyword if-op-attr contained
syn keyword Keyword if-op-property contained
syn keyword Keyword if-operation contained
syn keyword Keyword if-password contained
syn keyword Keyword if-src-attr contained
syn keyword Keyword if-src-dn contained
syn keyword Keyword if-xml-attr contained
syn keyword Keyword if-xpath contained
syn keyword Keyword token-added-entitlement contained
syn keyword Keyword token-association contained
syn keyword Keyword token-attr contained
syn keyword Keyword token-base64-decode contained
syn keyword Keyword token-base64-encode contained
syn keyword Keyword token-char contained
syn keyword Keyword token-class-name contained
syn keyword Keyword token-convert-time contained
syn keyword Keyword token-dest-attr contained
syn keyword Keyword token-dest-dn contained
syn keyword Keyword token-dest-name contained
syn keyword Keyword token-document contained
syn keyword Keyword token-entitlement contained
syn keyword Keyword token-escape-for-dest-dn contained
syn keyword Keyword token-escape-for-src-dn contained
syn keyword Keyword token-generate-password contained
syn keyword Keyword token-global-variable contained
syn keyword Keyword token-join contained
syn keyword Keyword token-local-variable contained
syn keyword Keyword token-lower-case contained
syn keyword Keyword token-map contained
syn keyword Keyword token-named-password contained
syn keyword Keyword token-op-attr contained
syn keyword Keyword token-op-property contained
syn keyword Keyword token-operation contained
syn keyword Keyword token-parse-dn contained
syn keyword Keyword token-password contained
syn keyword Keyword token-query contained
syn keyword Keyword token-removed-attr contained
syn keyword Keyword token-removed-entitlement contained
syn keyword Keyword token-replace-all contained
syn keyword Keyword token-replace-first contained
syn keyword Keyword token-resolve contained
syn keyword Keyword token-split contained
syn keyword Keyword token-src-attr contained
syn keyword Keyword token-src-dn contained
syn keyword Keyword token-src-name contained
syn keyword Keyword token-substring contained
syn keyword Keyword token-text contained
syn keyword Keyword token-time contained
syn keyword Keyword token-unique-name contained
syn keyword Keyword token-unmatched-src-dn contained
syn keyword Keyword token-upper-case contained
syn keyword Keyword token-xml-parse contained
syn keyword Keyword token-xml-serialize contained
syn keyword Keyword token-xpath contained

syn keyword xmlAttr modify-attr contained
syn keyword xmlAttr add-attr contained
syn keyword xmlAttr read-attr contained

syn match Boolean /\vTRUE|FALSE/

syn region string1 start="\v\'" end="\v\'" contained
syn region string2 start="\v\"" end="\v\"" contained 

syn region ifRegion start="\v\s+\(" end="\v\)" contains=string1,string2,Keyword
syn match ruleSelected /Rule selected/
syn match ruleRejected /Rule rejected/
"tive que adicionar o " na pesquisa para o parser nao confundir com o string2
syn region xmlAttrName start=/\vattr\-name\=\"/ms=e end=/\v\"/me=s contained 
syn region xmlRegion start="\v\<" end="\v\>" fold contains=string1,string2,xmlAttr,xmlAttrName
syn match evaluatingRule /Evaluating selection criteria for rule \'.*\'/ contains=string1
syn match applyingRule /Applying rule \'.*\'/ contains=string1
syn region statusLog start="\vDirXML Log" end="\vStatus" fold

syn region policyName start="\v\%\d+" end="\v\%" contained 
syn region applyingPolicy start="\vApplying policy\: \%\+C" end="\-C\." contains=policyName

syn region action  start="\vAction\:\s" end="\v\)." contains=Keyword

syn match statusOk /\v\:\s+Success/
syn match statusWarning /\v\:\s+Warning/
syn match statusError /\v\:\s+Error/

syn match Error /\v\s+Message\:\s+.*/

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
hi def link xmlAttr StorageClass
hi def link xmlAttrName SpecialComment
hi def link action Comment
hi def link statusOk Identifier
hi def link statusWarning Label
hi def link statusError Error
