as yet unclassified
testNetDown
	loopback down.
	self value: [(net1 findA: IP) << ((IPPacket with: (UDPPacket new: 100)) destination: (net2 findA: IP) address)] shouldRaise: NetDown