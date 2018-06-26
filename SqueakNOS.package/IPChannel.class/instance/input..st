flow
input: anIPPacket
	anIPPacket verifiesChecksum ifFalse: [^ self error: 'Bad checksum'].
	anIPPacket isFragment
		ifTrue: [anIPPacket >> reassembler]
		ifFalse: [super input: anIPPacket data]