accessing flags
fin: aBoolean
	self flags: (aBoolean ifTrue: [self flags bitOr: 16r01] ifFalse: [self flags bitClear: 16r01])