accessing flags
syn: aBoolean
	self flags: (aBoolean ifTrue: [self flags bitOr: 16r02] ifFalse: [self flags bitClear: 16r02])