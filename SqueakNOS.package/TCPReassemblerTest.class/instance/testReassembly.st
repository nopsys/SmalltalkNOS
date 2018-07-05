as yet unclassified
testReassembly
	self assert: reassembler dataAvailable not.
	reassembler add: ((self packetWithData: '' sequence: 0) syn: true).
	self assert: reassembler dataAvailable not.
	reassembler add: (self packetWithData: 'asdf' sequence: 1).
	self assert: reassembler dataAvailable.
	self assert: reassembler nextAvailable asString = 'asdf'.
	self assert: reassembler dataAvailable not