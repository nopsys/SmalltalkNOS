as yet unclassified
testOverlapingData
	reassembler add: (self packetWithData: '012345' sequence: 0).
	reassembler add: (self packetWithData: '456789' sequence: 4).
	self assert: stream dataAvailable.
	self assert: (stream next: 10) asString = '0123456789'.
	self assert: stream dataAvailable not