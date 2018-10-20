testing
testSequenceNumberWraparound2
	| data |
	socket1 sequence: (TCPSequenceNumber value: 16rFFFFFFF4).
	socket1 listen.
	socket2 connect.
	(Delay forMilliseconds: 1000) wait.
	self assert: stream2 dataAvailable not.
	'1234567890abcdef' do: [ :each | stream1 nextPut: each].
	stream1 flush.
	self shouldnt: [data := stream2 next: 16 timeoutAfter: self roundTripMilliseconds] raise: TimedOut.
	self assert: data = '1234567890abcdef'.
	self assert: stream2 dataAvailable not