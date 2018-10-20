testing
testTwoConnectionsDataFlow
	| data stream3 socket3 stream4 socket4 data2 |
	socket1 listen.
	socket2 connect.
	stream3 := NetStream on: (socket3 := InternalTCPSocket new localPort: 11234; remoteAddress: ip2 address; remotePort: 15678).
	stream4 := NetStream on: (socket4 := InternalTCPSocket new localPort: 15678; remoteAddress: ip1 address; remotePort: 11234).
	(ip1 findA: TCP) | socket3.
	(ip2 findA: TCP) | socket4.
	socket3 listen.
	socket4 connect.

	(Delay forMilliseconds: 1000) wait.
	self assert: stream2 dataAvailable not.
	stream1 nextPutAll: 'hola'; flush.
	stream3 nextPutAll: 'hello'; flush.
	self shouldnt: [data2 := stream4 next: 5 timeoutAfter: self roundTripMilliseconds] raise: TimedOut.
	self shouldnt: [data := stream2 next: 4 timeoutAfter: self roundTripMilliseconds] raise: TimedOut.
	self assert: data = 'hola'.
	self assert: data2 = 'hello'.
	self assert: stream2 dataAvailable not.
	self assert: stream4 dataAvailable not