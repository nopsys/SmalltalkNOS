testing
testBigIPPacket
	| received bigPacket socket |
	socket := ip2 raw | InternalRawSocket new.
	bigPacket := (IPPacket with: (UDPPacket new: 5000)) destination: ip2 address.
	ip1 << bigPacket.
	received := [socket nextTimeoutMSecs: self roundTripMilliseconds] on: TimedOut do: [].
	self assert: received notNil.
	self assert: received length = bigPacket length