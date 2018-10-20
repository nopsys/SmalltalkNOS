tests
test090WriteAtEndOfChanges
	| fs stream changes readOnlyStream contents |
	fs := self openRawBig.
	changes := fs root readOnlyFileNamed: (fs pureFAT32FilenameFor: 'SqueakNOS.changes').
	stream := changes readWriteStream.
	stream position: stream size.
	stream nextPutAll: 'Test content'.
	readOnlyStream := changes readStream.
	readOnlyStream position: readOnlyStream size - 12.
	contents := readOnlyStream next: 12.
	self assert: contents = 'Test content'