converting
byteAt: index
	self validateIndex: index.
	^ contents byteAt: offset + index