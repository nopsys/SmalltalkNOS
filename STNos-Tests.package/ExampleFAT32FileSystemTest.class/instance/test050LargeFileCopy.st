tests
test050LargeFileCopy
	self
		createTempFile: 'morecopy.st'
		from: 'moreth~2'
		do:
			[ :original :clone :filesystem | self assert: original readStream contents equals: clone readStream contents ]