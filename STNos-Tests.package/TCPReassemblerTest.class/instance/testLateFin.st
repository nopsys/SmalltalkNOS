as yet unclassified
testLateFin
	self assert: reassembler finished not.
	reassembler add: ((self packetWithData: '' sequence: 0) syn: true).
	self assert: reassembler finished not.
	reassembler add: ((self packetWithData: '' sequence: 5) fin: true).
	self assert: reassembler finished not.
	reassembler add: (self packetWithData: '1234' sequence: 1).
	self assert: reassembler finished