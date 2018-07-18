as yet unclassified
testArithmetic
	self assert: (TCPSequenceNumber value: 16rFFFFFFFF) + 1 = (TCPSequenceNumber value: 0).
	self assert: (TCPSequenceNumber value: 0) - 1 = (TCPSequenceNumber value: 16rFFFFFFFF).
	self assert: (TCPSequenceNumber value: 0) + 1 = (TCPSequenceNumber value: 1).
	self assert: (TCPSequenceNumber value: 1) - 1 = (TCPSequenceNumber value: 0)