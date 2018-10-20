accessing
cacheAt: aProtocolAddress put: aHardwareAddress
	(entries detect: [ :one | one protocol = aProtocolAddress] ifNone: [entries add: (ARPEntry new timeout: timer time + self keepMilliseconds)])
		protocol: aProtocolAddress;
		hardware: aHardwareAddress