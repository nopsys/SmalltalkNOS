tests
test021AsciiFile
	| ascii |
	ascii := self openRawSmall root fileNamed: 'ascii'.
	self assert: ascii readStream contents = ('zaraza' , String lf)