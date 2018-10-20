testing
testPingTimeout
	" This test fails (never ends) because, I believe, there's
	a bug in Monitor>>#waitWhile:inQueue:maxMilliseconds: "
	| icmp ip socket response | 
	icmp := (ICMPPacket new: 100)
		typeName: #EchoRequest;
		id: 1;
		sequence: 1.
	ip := (IPPacket with: icmp)
		destination: (InternetAddress fromString: '1.2.3.4');
		ttl: 255;
		id: 34233.
	socket := ip1 icmp | InternalRawSocket new.
	socket nextPut: ip.
	response := [ socket nextTimeoutMSecs: 1000 ]
		on: TimedOut
		do: [ self error: 'timed out' ].
	self assert: response isEchoReply & (response envelope source = ip2 address)