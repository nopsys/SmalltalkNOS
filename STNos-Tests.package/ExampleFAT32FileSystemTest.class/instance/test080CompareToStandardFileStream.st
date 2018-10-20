tests
test080CompareToStandardFileStream
	| fs fatChanges fat32TestStream standardTestStream |
	fs := self openRawBig.
	fatChanges := fs root readOnlyFileNamed: (fs pureFAT32FilenameFor: 'SqueakNOS.changes').
	fat32TestStream := fatChanges readStream.
	standardTestStream := 'testdata/SqueakNOS.changes' asFileReference readStream.
	self assert: fat32TestStream size = standardTestStream size.
	self assert: (fat32TestStream next: 1000) = (standardTestStream next: 1000).
	fat32TestStream position: 10000.
	standardTestStream position: 10000.
	self assert: (fat32TestStream basicUpTo: $!) = (standardTestStream basicUpTo: $!).
	fat32TestStream position: fat32TestStream size - 500.
	standardTestStream position: standardTestStream size - 500.
	self assert: fat32TestStream upToEnd = standardTestStream upToEnd