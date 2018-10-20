accessing flags
urg: aBoolean
	self flags: (aBoolean ifTrue: [self flags bitOr: 16r20] ifFalse: [self flags bitClear: 16r20])