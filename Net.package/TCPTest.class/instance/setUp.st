running
setUp
	ip1 := self newHostWithAddress: (InternetAddress fromString: '192.168.88.1').
	ip2 := self newHostWithAddress: (InternetAddress fromString: '192.168.88.2').

	ip1 tcp timerUp.
	ip2 tcp timerUp.

	loopback := NetInterface on: RealisticLoopback new.

	loopback | (PluggableConduit new outgoingAction: [ :each | Transcript cr; nextPutAll: '(1) ', each fullPrintString]) | ip1.
	loopback | (PluggableConduit new outgoingAction: [ :each | Transcript cr; nextPutAll: '(2) ', each fullPrintString]) | ip2.

	stream1 := NetStream on: (socket1 := InternalTCPSocket new localPort: 1234; remoteAddress: ip2 address; remotePort: 5678).
	stream2 := NetStream on: (socket2 := InternalTCPSocket new localPort: 5678; remoteAddress: ip1 address; remotePort: 1234).
	(ip1 findA: TCP) | socket1.
	(ip2 findA: TCP) | socket2.

	loopback up