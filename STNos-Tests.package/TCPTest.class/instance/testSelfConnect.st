testing
testSelfConnect
	socket1 remoteAddress: ip1 address; remotePort: socket1 localPort.
	socket1 connect.
	self assert: (socket1 state isKindOf: TCPSynSent).
	(Delay forMilliseconds: 1000) wait.
	self assert: (socket1 state isKindOf: TCPEstablished)