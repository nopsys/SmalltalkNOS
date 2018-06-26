accessing
protocolAddress
	^ (entries detect: [ :one | one hardware = self hardwareAddress] ifNone: [^ nil]) protocol