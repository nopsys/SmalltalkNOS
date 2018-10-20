flow
input: anIPPacket
	anIPPacket verifiesChecksum ifFalse: [^ self error: 'Bad checksum'].
	anIPPacket source isUnicast ifFalse: [^ self error: 'Bad source address'].
	anIPPacket isFragment
		ifTrue: [anIPPacket >> reassembler]
		ifFalse: [anIPPacket >> raw.
				super input: anIPPacket data]