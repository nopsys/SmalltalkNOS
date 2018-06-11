converting
byteAt: index put: byte
	self validateIndex: index.
	^contents at: offset + index put: byte