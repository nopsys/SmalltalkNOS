testing
matches: aPacket
	| aFragment |
	aFragment := fragments first.
	^ aFragment id = aPacket id and: [aFragment source = aPacket source and: [aFragment destination = aPacket destination]]