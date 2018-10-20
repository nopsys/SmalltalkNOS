flow
output: aPacket
	| destination |
	(aPacket isKindOf: EthernetPacket)
		ifTrue: [address notNil ifTrue: [aPacket source: address].
				^ super output: aPacket].
	(destination := arp at: aPacket destination ifAbsent: []) isNil
		ifFalse: [^ super output: ((EthernetPacket with: aPacket) source: address; destination: destination)].
	arp request: aPacket destination enqueue: aPacket