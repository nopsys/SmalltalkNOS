printing
fullPrintOn: aStream
	| packet |
	packet := self.
	[aStream print: packet; space.
	(packet := packet data) isNil] whileFalse: [aStream nextPutAll: '| ']