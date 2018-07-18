tests
testSequenceWrapAround
	| seq |
	seq := TCPSequenceNumber value: 16rFFFFFFF8.
	reassembler sequence: seq.
	reassembler add: (self packetWithData: '012345' sequence: seq).
	reassembler add: (self packetWithData: '678901' sequence: seq+6).
	reassembler add: (self packetWithData: '23456789' sequence: seq+12).
	self assert: stream dataAvailable.
	self assert: (stream next: 20) asString = '01234567890123456789'.
	self assert: stream dataAvailable not