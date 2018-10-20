accessing flags
xxx: aBoolean
	self flags: (aBoolean ifTrue: [self flags bitOr: 16r40] ifFalse: [self flags bitClear: 16r40])