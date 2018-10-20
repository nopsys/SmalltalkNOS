as yet unclassified
testUDPClosed
	| received socket |
	socket := eth ip icmp | InternalRawSocket new.
	eth ip << ((IPPacket with: ((UDPPacket new: 100) destination: 100)) destination: self addressOfTestServer).
	received := [socket nextTimeoutMSecs: self roundTripMilliseconds] on: TimedOut do: [].
	self assert: received notNil.
	self assert: received isPortUnreachable