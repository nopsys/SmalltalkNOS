as yet unclassified
testRead
	| source |
	source := ReadStream on: 'this is a long string to read'.
	self assert: (StreamOnStream on: source from: 5 to: source size) contents asString = 'is a long string to read'.
	self assert: (StreamOnStream on: source from: 5 to: 14) contents asString = 'is a long'.