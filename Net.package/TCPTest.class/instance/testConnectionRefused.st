testing
testConnectionRefused
"	socket1 listen." "skip listening and still try to connect"
	socket2 connect.
	self assert: (socket2 state isKindOf: TCPSynSent).
	(Delay forMilliseconds: 1000) wait.
	self assert: (socket1 state isKindOf: TCPClosed)