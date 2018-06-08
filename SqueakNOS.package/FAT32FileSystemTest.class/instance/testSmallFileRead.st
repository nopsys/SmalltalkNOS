tests
testSmallFileRead
	| filesystem root ascii |
	filesystem := self newInstance.
	root := filesystem root.
	ascii := root fileNamed: 'ascii'.
	self assert: ascii readStream contents asString trimmed asLowercase = 'zaraza'.