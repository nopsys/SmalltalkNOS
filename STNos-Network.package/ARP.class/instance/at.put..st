accessing
at: aProtocolAddress put: aHardwareAddress
	(entries detect: [ :one | one protocol = aProtocolAddress] ifNone: [entries add: ARPEntry new])
		protocol: aProtocolAddress;
		hardware: aHardwareAddress