as yet unclassified
testReverseArithmetic
	self assert: 1 + (TCPSequenceNumber value: 16rFFFFFFFF) = (TCPSequenceNumber value: 0).
	self assert: 1 + (TCPSequenceNumber value: 0) = (TCPSequenceNumber value: 1)