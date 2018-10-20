private
handleInputPacket: aPacket
	inputQ size > 100 ifTrue: [^ self error: 'Packet dropped'].
	inputQ nextPut: aPacket