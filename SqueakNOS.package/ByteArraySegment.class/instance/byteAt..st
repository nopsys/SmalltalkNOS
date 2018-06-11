converting
byteAt: index
	self validateIndex: index.
	^contents at: offset + index