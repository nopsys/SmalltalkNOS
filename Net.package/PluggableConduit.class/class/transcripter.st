examples
transcripter
	^ self new
		outgoingAction: [ :aPacket | Transcript cr; show: '<< '; show: aPacket fullPrintString];
		incomingAction: [ :aPacket | Transcript cr; show: '>> '; show: aPacket fullPrintString];
		yourself