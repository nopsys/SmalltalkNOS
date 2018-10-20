tests
test010EmptyFile
	"
	self new test010EmptyFile
	"

	| empty |
	empty := self openRawSmall root files
		detect: [ :file | file name asLowercase = 'empty.txt' ]
		ifNone: [ self assert: false ].
	self assert: empty readStream contents isEmpty