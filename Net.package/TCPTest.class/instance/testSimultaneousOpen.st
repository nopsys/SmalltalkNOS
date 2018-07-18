testing
testSimultaneousOpen
	socket1 connect.
	self assert: (socket1 state isKindOf: TCPSynSent).
	socket2 connect.
	self assert: (socket2 state isKindOf: TCPSynSent).
	(Delay forMilliseconds: 1000) wait.
	self assert: (socket2 state isKindOf: TCPEstablished).
	self assert: (socket1 state isKindOf: TCPEstablished)