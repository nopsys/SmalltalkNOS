flow
input: anICMPPacket
	| answer |
	anICMPPacket verifiesChecksum ifFalse: [^ self error: 'Bad checksum'].
	anICMPPacket isTimestampRequest
		ifTrue: [(answer := anICMPPacket envelope copy) data
					type: 14; "TimestampReply"
					receiveTimestamp: self timestamp;
					transmitTimestamp: self timestamp;
					setChecksum.
				answer swapSourceAndDestination.
				^ self << answer].
	anICMPPacket isEchoRequest
		ifTrue: [(answer := anICMPPacket envelope copy) data
					type: 0; "EchoReply"
					setChecksum.
				answer swapSourceAndDestination.
				^ self << answer].
	anICMPPacket isDestinationUnreachable
		ifTrue: [self triggerEvent: #destinationUnreachable: with: anICMPPacket].
	super input: anICMPPacket