tests
test020AsciiFile
	"
	self new test020AsciiFile
	"

	| filesystem empty |
	filesystem := self openRawFilesystem: './testdata/FAT32PartitionSmall.raw'.
	empty := filesystem root files detect: [ :file | file name asLowercase = 'ascii' ].
	self assert: empty readStream contents = ('zaraza', String lf)