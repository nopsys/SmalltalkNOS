testing
testHalfClose
	| data |
	socket1 listen.
	socket2 connect.
	(Delay forMilliseconds: 1000) wait.
	stream2 close.
	(Delay forMilliseconds: 1000) wait.
	self assert: stream2 dataAvailable not.
	stream1 nextPutAll: 'some data'; flush.
	self shouldnt: [data := stream2 next: 9 timeoutAfter: self roundTripMilliseconds] raise: TimedOut.
	self assert: data = 'some data'.
	self assert: stream2 dataAvailable not