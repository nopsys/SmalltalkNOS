testing
testProtocolUnreachable
	| received socket |
	socket := ip1 icmp | InternalRawSocket new.
	ip1 << ((IPPacket with: (IGMPPacket new: 100)) destination: ip2 address).
	received := [socket nextTimeoutMSecs: self roundTripMilliseconds] on: TimedOut do: [].
	self assert: received notNil.
	self assert: received isProtocolUnreachable