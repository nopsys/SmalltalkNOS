tests
test025SmallFileWrite
	| root name small stream |
	root := self openRawSmall root.
	name := 'small.st'.
	self assert: (root files noneSatisfy: [ :file | file name asLowercase = name ]).
	small := root newFileNamed: name.
	stream := small readWriteStream.
	stream nextPutAll: 'zaraza test small'.
	self assert: (root fileNamed: name) readStream contents = 'zaraza test small'
