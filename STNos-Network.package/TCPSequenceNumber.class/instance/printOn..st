printing
printOn: aStream
	aStream nextPut: $[; print: self asInteger; nextPut: $]