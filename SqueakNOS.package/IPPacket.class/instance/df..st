accessing flags
df: aBoolean
	"Set the 'dont fragment' flag."
	self flags: (aBoolean ifTrue: [self flags bitOr: 2] ifFalse: [self flags bitClear: 2])