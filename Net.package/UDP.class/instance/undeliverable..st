flow
undeliverable: aPacket
	| icmp ip |
	icmp := (ICMPPacket quote: aPacket envelope)
		typeName: #DestinationUnreachable;
		codeName: #PortUnreachable.
	ip := (IPPacket with: icmp)
		source: aPacket envelope destination;
		destination: aPacket envelope source.
	self << ip