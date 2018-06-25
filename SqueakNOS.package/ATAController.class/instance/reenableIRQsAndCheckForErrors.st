services
reenableIRQsAndCheckForErrors
	| status |
	status := self atStatusReg.
	(self errorOccurred: status) ifTrue:  [ self error: 'An error ocurred while transfering data' ]