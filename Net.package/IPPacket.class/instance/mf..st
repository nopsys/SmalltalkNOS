accessing flags
mf: aBoolean
	"Set the motherfucker."
	self flags: (aBoolean ifTrue: [self flags bitOr: 1] ifFalse: [self flags bitClear: 1])