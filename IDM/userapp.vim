syntax clear
syn keyword Error ERROR
syn keyword Constant TRACE WARNING INFO NOTIFICATION
syn match Error /Error.*/
syn match Operator /Process Name: .\{-}\ze, /
syn match Identifier /Initiated by .\{-}\ze, /
syn match Ignore /Activity: .\{-}\ze, /
syn match Tag /Process ID: .\{-}\ze, /
syn match Typedef /Recipient: .\{-}\ze, /
