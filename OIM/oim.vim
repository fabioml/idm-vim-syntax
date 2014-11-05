syntax clear
syn keyword Error ERROR
syn keyword Constant TRACE WARNING INFO NOTIFICATION
syn match Error /Error.*/
syn match Error /.*Exception:.*/
syn match Operator /userId:[^\]]\+/ 
syn match Identifier /ecid:[^\]]\+/
syn match Function /SRC_METHOD:[^\]]\+/
syn match Label /ENTRY/ 
syn match Label /RETURN/ 
syn match Tag /SRC_CLASS:[^\]]\+/ 
syn match Typedef /\d\+.\d\+.\d\+.\d\+.\d\+.\d\+.\d\+.\d\+.\d\+/
syn match Special /br.com.sec4you[^\]]\+/ 
syn match Function /\v\[(\w+\.+)+\w+\]/ 
" orchestration number action like: 
"	125,044.0.RoleUser.DELETE or
"	125,045.0.Resource.ACCESS_POLICY_BASED_PROVISION
"	62,409.504,727.User.MODIFY
syn match Constant /\v\d+\,*\d*\.\d+\,*\d*\.\a+\.\a+(_+\a+)*/
" adpters execption like: .adpADIDCUPDATECHILDTABLEVALUES.
"syn match adpter /\v\.adp.*\./ contained
syn match adpter /\v\.adp[^\.]+/ contained
syn match Constant /\v.*\.adp.*\./ contains=adpter
hi def link adpter Label

