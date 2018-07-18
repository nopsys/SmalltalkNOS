slip protocol
nextChunkPut: aString
	| next strm |
	strm := ReadStream on: aString.
	[strm atEnd] whileFalse: [
		next := strm next asCharacter.
		next = END ifTrue: [
			stream nextPut: ESC.
			next := ESCEND].
		next = ESC ifTrue: [
			stream nextPut: ESC.
			next := ESCESC].
		stream nextPut: next].
	stream nextPut: END.