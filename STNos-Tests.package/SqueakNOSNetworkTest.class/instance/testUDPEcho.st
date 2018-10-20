as yet unclassified
testUDPEcho
	| socket packet |
	socket := eth ip udp socketTo: self addressOfTestServer port: 7.
	socket nextPut: (UDPPacket with: 'hola').
	[packet := socket nextTimeoutMSecs: 1000] on: TimedOut do: [^ self error: 'timed out'].
	self assert: packet rawData asString = 'hola'.
	socket close