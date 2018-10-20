as yet unclassified
testFinWithData
	reassembler add: (self packetWithData: '01234' sequence: 0).
	reassembler add: ((self packetWithData: '56789' sequence: 5) fin: true).
	self assert: stream dataAvailable.
	self assert: reassembler finished.
	self assert: (stream next: 10) asString = '0123456789'.
	self assert: stream dataAvailable not