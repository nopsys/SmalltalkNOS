testing
testConnectionEstablishment
	socket1 listen.
	self assert: (socket1 state isKindOf: TCPListen).
	socket2 connect.
	self assert: (socket2 state isKindOf: TCPSynSent).
	(Delay forMilliseconds: 2000) wait.
	self assert: (socket1 state isKindOf: TCPEstablished).
	self assert: (socket2 state isKindOf: TCPEstablished)