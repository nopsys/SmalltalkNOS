tests
testLargeFileAppend

	self createTempFile: 'morecopy.st' from: 'moreth~2' do:
	[ :original :clone :filesystem | | stream |
	
		stream := clone readWriteStream.
		stream setToEnd.
		stream nextPutAll: 'Goodbye cruel world!'.
		self assert: clone readStream contents trimmed = (original readStream contents trimmed, 'Goodbye cruel world!').
	].
	
	