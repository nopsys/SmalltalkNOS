testing
testConnectionTermination
	socket1 listen.
	self assert: (socket1 state isKindOf: TCPListen).
	socket2 connect.
	self assert: (socket2 state isKindOf: TCPSynSent).
	(Delay forMilliseconds: 1000) wait.
	self assert: (socket1 state isKindOf: TCPEstablished).
	self assert: (socket2 state isKindOf: TCPEstablished).
	socket1 close.
	(Delay forMilliseconds: 1000) wait.
	self assert: (socket1 state isKindOf: TCPFinWait2).
	self assert: (socket2 state isKindOf: TCPCloseWait).
	socket2 close.
	(Delay forMilliseconds: 1000) wait.
	self assert: (socket1 state isKindOf: TCPTimeWait).
	self assert: (socket2 state isKindOf: TCPClosed)