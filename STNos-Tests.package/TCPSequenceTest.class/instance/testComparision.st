as yet unclassified
testComparision
	self assert: (TCPSequenceNumber value: 0) < (TCPSequenceNumber value: 1).
	self deny: (TCPSequenceNumber value: 1) < (TCPSequenceNumber value: 1).
	self deny: (TCPSequenceNumber value: 1) < (TCPSequenceNumber value: 0)