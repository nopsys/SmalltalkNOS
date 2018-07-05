as yet unclassified
testProtocolUnreachable
	| received socket |
	socket := eth ip icmp | InternalRawSocket new.
	eth ip << ((IPPacket with: (IGMPPacket new: 100)) destination: self addressOfTestServer).
	received := [socket nextTimeoutMSecs: self roundTripMilliseconds] on: TimedOut do: [].
	self assert: received notNil.
	self assert: received isProtocolUnreachable