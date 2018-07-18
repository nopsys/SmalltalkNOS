accessing flags
ack: aBoolean
	self flags: (aBoolean ifTrue: [self flags bitOr: 16r10] ifFalse: [self flags bitClear: 16r10])