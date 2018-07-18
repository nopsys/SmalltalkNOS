slip protocol
nextChunk
	| next |	
	^ (String streamContents: [:strm |
		[(next := stream next) = END] whileFalse: [
			next = ESC ifTrue: [
				(next := stream next).
				next = ESCEND ifTrue: [next := END].
				next = ESCESC ifTrue: [next := ESC]].
			strm nextPut: next]]) asByteArray.