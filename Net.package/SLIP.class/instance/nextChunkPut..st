slip protocol
nextChunkPut: aByteArray
	| next strm |
	strm := ReadStream on: aByteArray.
	[strm atEnd] whileFalse: [
		next := strm next.
		next = END ifTrue: [
			stream nextPut: ESC.
			next := ESCEND].
		next = ESC ifTrue: [
			stream nextPut: ESC.
			next := ESCESC].
		stream nextPut: next].
	stream nextPut: END.