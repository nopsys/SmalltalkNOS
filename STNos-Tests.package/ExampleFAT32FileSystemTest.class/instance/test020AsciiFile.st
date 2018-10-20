tests
test020AsciiFile
	"
	self new test020AsciiFile
	"

	| ascii |
	ascii := self openRawSmall root files detect: [ :file | file name asLowercase = 'ascii' ].
	self assert: ascii readStream contents = ('zaraza' , String lf)