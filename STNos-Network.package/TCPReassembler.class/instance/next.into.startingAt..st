accessing
next: anInteger into: aByteArray startingAt: startIndex
	"Read the next anInteger bytes into aByteArray, starting at startIndex. Answer the number of bytes actually read."

	self dataAvailable ifFalse: [^ 0].
	^ (stream next: anInteger into: aByteArray startingAt: startIndex) size - startIndex + 1