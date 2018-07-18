accessing flags
yyy: aBoolean
	self flags: (aBoolean ifTrue: [self flags bitOr: 16r80] ifFalse: [self flags bitClear: 16r80])