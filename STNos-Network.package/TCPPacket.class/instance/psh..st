accessing flags
psh: aBoolean
	self flags: (aBoolean ifTrue: [self flags bitOr: 16r08] ifFalse: [self flags bitClear: 16r08])