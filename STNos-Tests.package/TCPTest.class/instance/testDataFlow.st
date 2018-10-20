testing
testDataFlow
	| data |
	socket1 listen.
	socket2 connect.
	(Delay forMilliseconds: 1000) wait.
	self assert: stream2 dataAvailable not.
	stream1 nextPutAll: 'hola'; flush.
	self shouldnt: [data := stream2 next: 4 timeoutAfter: self roundTripMilliseconds] raise: TimedOut.
	self assert: data = 'hola'.
	self assert: stream2 dataAvailable not