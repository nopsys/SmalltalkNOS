testing
testListenWildcards
	socket1 remoteAddress: nil; remotePort: nil.
	socket1 listen.
	self assert: (socket1 state isKindOf: TCPListen).
	socket2 connect.
	(Delay forMilliseconds: 1000) wait.
	self assert: (socket1 state isKindOf: TCPEstablished).
	self assert: (socket2 state isKindOf: TCPEstablished).
	self assert: socket1 remoteAddress = ip2 address.
	self assert: socket1 remotePort = socket2 localPort