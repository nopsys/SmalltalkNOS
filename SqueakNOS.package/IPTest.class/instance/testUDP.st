testing
testUDP
	| socket1 socket2 hola |
	socket1 := ip1 udp socketTo: ip2 address port: 5678 localPort: 1234.
	socket2 := ip2 udp socketTo: ip1 address port: 1234 localPort: 5678.
	self assert: socket2 dataAvailable not.
	socket1 nextPut: (UDPPacket with: 'hola').
	hola := socket2 nextTimeoutMSecs: self roundTripMilliseconds.
	self assert: hola rawData asString = 'hola'.
	self assert: socket2 dataAvailable not