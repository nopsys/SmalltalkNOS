testing
testSequenceNumberWraparound
	"Test proper functioning when sequence
	numbers (a) pass 2**31 (i.e., go from plus to 'minus') and
	(b) pass 2**32 (i.e., go from 2**32-1 to 0)."

	| data |
	socket1 sequence: (TCPSequenceNumber value: 16rFFFFFFF4).
	socket1 listen.
	socket2 connect.
	(Delay forMilliseconds: 1000) wait.
	self assert: stream2 dataAvailable not.
	stream1 nextPutAll: '1234567890abcdef'; flush.
	self shouldnt: [data := stream2 next: 16 timeoutAfter: self roundTripMilliseconds] raise: TimedOut.
	self assert: data = '1234567890abcdef'.
	self assert: stream2 dataAvailable not