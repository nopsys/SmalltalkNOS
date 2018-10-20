converting
bytesAtOffset: anInteger put: anByteArray
	self
		replaceFrom: anInteger + 1
		to: anInteger + anByteArray sizeInBytes
		with: anByteArray
		startingAt: 1