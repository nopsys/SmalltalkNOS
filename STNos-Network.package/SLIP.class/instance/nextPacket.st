accessing
nextPacket
	| nextChunk |
	[(nextChunk := self nextChunk) size = 0] whileTrue.
	^ IPPacket bytes: nextChunk