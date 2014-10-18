syntax clear
syn keyword Error ERROR
syn keyword Constant TRACE WARNING INFO NOTIFICATION
syn match Error /Error.*/
syn match Operator /userId:[^\]]\+/ 
syn match Identifier /ecid:[^\]]\+/
syn match Function /SRC_METHOD:[^\]]\+/
syn match Label /ENTRY/ 
syn match Label /RETURN/ 
syn match Tag /SRC_CLASS:[^\]]\+/ 
syn match Typedef /\d\+.\d\+.\d\+.\d\+.\d\+.\d\+.\d\+.\d\+.\d\+/
syn match Special /br.com.sec4you[^\]]\+/ 
syn match Function /\v\[(\w+\.+)+\w+\]/ 
