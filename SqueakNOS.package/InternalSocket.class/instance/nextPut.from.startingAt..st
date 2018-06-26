accessing
nextPut: anInteger from: aByteArray startingAt: startIndex
	"Write the next anInteger elements in aByteArray, starting at startIndex. Answer the number of bytes actually written."

	^ self subclassResponsibility