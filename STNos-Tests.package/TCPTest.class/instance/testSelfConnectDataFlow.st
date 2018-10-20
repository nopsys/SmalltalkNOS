testing
testSelfConnectDataFlow
	| data |
	socket1 remoteAddress: ip1 address; remotePort: socket1 localPort.
	socket1 connect.
	self assert: stream1 dataAvailable not.
	stream1 nextPutAll: 'hola'; flush.
	(Delay forMilliseconds: 1000) wait.
	self assert: stream1 dataAvailable.
	self shouldnt: [data := stream2 next: 4 timeoutAfter: self roundTripMilliseconds] raise: TimedOut.
	self assert: data = 'hola'.
	self assert: stream1 dataAvailable not