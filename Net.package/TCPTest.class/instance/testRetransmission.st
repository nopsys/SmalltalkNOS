testing
testRetransmission
	| data |
	socket1 listen.
	socket2 connect.
	(Delay forMilliseconds: 1000) wait.
	self assert: stream2 dataAvailable not.
	loopback device dropRate: 1.
	stream1 nextPutAll: 'hola'; flush.
	self should: [stream2 next: 4 timeoutAfter: self roundTripMilliseconds] raise: TimedOut.
	self assert: stream2 dataAvailable not.
	loopback device dropRate: 0.
	self shouldnt: [data := stream2 next: 4 timeoutAfter: self roundTripMilliseconds * 2] raise: TimedOut.
	self assert: data = 'hola'.
	self assert: stream2 dataAvailable not