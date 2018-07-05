accessing
nextPacket
	| hdr packetLength capLen |
	hdr := stream next: 16.
	capLen := hdr unsignedLongAt: 9 bigEndian: false.
	packetLength := hdr unsignedLongAt: 13 bigEndian: false.
	^ packetClass bytes: (stream next: capLen)