protocol
handleData: aPacket
	| previousLastSequence |
	previousLastSequence := self reassembler lastSequence.
	self reassembler add: aPacket.
	self reassembler lastSequence > previousLastSequence
		ifTrue: [self sendAck]