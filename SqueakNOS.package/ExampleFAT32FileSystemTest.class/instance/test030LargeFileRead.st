tests
test030LargeFileRead
	"I open a file bigger than one cluster and check it's content to match what is written by the testing filesystem generator script"

	| fs bytesPerCluster name large contents |
	fs := self openRawBig.
	bytesPerCluster := fs bytesPerCluster.
	name := fs pureFAT32FilenameFor: 'moreth~2'.
	large := fs root fileNamed: name.
	contents := large readStream contents asString trimmed.
	self
		assert: contents size > bytesPerCluster;
		assert: (contents first: 13) = '1234567890abc';
		assert: (contents last: 13) = '1234567890abc'