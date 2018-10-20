as yet unclassified
testDataAfterFin
	reassembler add: ((self packetWithData: '01234' sequence: 0) fin: true).
	reassembler add: (self packetWithData: '56789' sequence: 5).
	self assert: reassembler dataAvailable.
	self assert: reassembler finished.
	self assert: reassembler nextAvailable asString = '01234'.
	self assert: reassembler dataAvailable not