printing
printOn: aStream
	aStream nextPutAll: '{SACK'.
	self numberOfBlocks > 0 ifFalse: [aStream nextPut: $=].
	self blocks do: [ :each | aStream print: each first; nextPut: $-; print: each last] separatedBy: [aStream nextPut: $,].
	aStream nextPut: $}