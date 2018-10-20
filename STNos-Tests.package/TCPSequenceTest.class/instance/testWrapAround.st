as yet unclassified
testWrapAround
	self assert: (TCPSequenceNumber value: 16rFFFFFFFF) < (TCPSequenceNumber value: 0).
	self assert: (TCPSequenceNumber value: 16rFFFFFFF4) < (TCPSequenceNumber value: 4).
	self assert: (TCPSequenceNumber value: 16rFFFFFFF1) < (TCPSequenceNumber value: 15)