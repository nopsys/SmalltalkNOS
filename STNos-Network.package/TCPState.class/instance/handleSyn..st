protocol
handleSyn: aPacket
	self reassembler sequence: aPacket nextSequence.
	socket mss: (socket mss min: (aPacket mss ifNil: [536])).
	self updateSendingWindowSize: aPacket "is this right ???"