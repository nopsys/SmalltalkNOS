converting
byteAt: index put: byte
	self validateIndex: index.
	^ contents byteAt: offset + index put: byte