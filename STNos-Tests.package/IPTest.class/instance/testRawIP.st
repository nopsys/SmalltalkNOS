testing
testRawIP
	| received socket |
	socket := ip2 raw | InternalRawSocket new.
	ip1 << ((IPPacket with: (UDPPacket new: 100)) destination: ip2 address).
	received := [socket nextTimeoutMSecs: self roundTripMilliseconds] on: TimedOut do: [].
	self assert: received notNil.
	self assert: received destination = ip2 address.
	self assert: received source = ip1 address.
	self assert: (received data isKindOf: UDPPacket)