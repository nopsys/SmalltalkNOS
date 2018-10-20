slip protocol
nextChunk
	| next |	
	^ (ByteArray streamContents: [:strm |
		[(next := stream next) = END] whileFalse: [
			next = ESC ifTrue: [
				(next := stream next).
				next = ESCEND ifTrue: [next := END].
				next = ESCESC ifTrue: [next := ESC]].
			strm nextPut: next]]).