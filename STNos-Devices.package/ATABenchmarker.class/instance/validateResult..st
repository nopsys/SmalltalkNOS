services
validateResult: magic
	magic = 16rAA55 ifFalse: [ self error: 'read failed' ]