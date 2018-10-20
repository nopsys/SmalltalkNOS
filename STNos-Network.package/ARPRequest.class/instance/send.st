accessing
send
	| packet ethernet |
	tries := tries + 1.
	packet := (ARPPacket new: 42)
		opcodeName: #Request;
		senderHardwareAddress: arp hardwareAddress;
		senderProtocolAddress: arp protocolAddress;
		targetProtocolAddress: protocol.
	ethernet := (EthernetPacket with: packet)
		destination: EthernetAddress broadcast.
	arp << ethernet