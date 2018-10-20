tests
test060LargeFileAppend
	self
		createTempFile: 'morecopy.st'
		from: 'moreth~2'
		do: [ :original :clone :filesystem | 
			| stream |
			stream := clone readWriteStream.
			stream setToEnd.
			stream nextPutAll: 'Goodbye cruel world!'.
			self
				assert:
					clone readStream contents
						equals: (original readStream contents , 'Goodbye cruel world!') ]