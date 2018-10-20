accessing
mtu
	^ super mtu - IPPacket headerSize "- options size"