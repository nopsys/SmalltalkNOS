tests
test070LargeFileWrite
		| fs root large original name new written |
	fs := self openRawBig.
	root := fs root.
	large := root files detect: [:file | file name asLowercase = 'moreth~2'] ifNone: [self assert: false].
	original := large readStream contents trimmed.
	name := 'new.st'.
	self assert: ( root files noneSatisfy: [:file | file name asLowercase = name] ).
	new := root newFileNamed: name.

	new readWriteStream nextPutAll: original.
	written := (root fileNamed: name) readStream contents.
	self assert: written size > fs bytesPerCluster;
	assert: (written first: 13) equals: '1234567890abc';
	assert: (written last: 13) equals: '1234567890abc';
	assert: written equals: original.

	