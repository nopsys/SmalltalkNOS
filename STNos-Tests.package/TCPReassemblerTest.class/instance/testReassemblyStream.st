as yet unclassified
testReassemblyStream
	self assert: stream dataAvailable not.
	reassembler add: ((self packetWithData: '' sequence: 0) syn: true).
	self assert: stream dataAvailable not.
	reassembler add: (self packetWithData: 'asdfg' sequence: 1).
	self assert: stream dataAvailable.
	self assert: (stream next: 4) asString = 'asdf'.
	self assert: stream dataAvailable.
	self assert: stream next asCharacter = $g.
	self assert: stream dataAvailable not