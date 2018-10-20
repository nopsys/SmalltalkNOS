accessing flags
rst: aBoolean
	self flags: (aBoolean ifTrue: [self flags bitOr: 16r04] ifFalse: [self flags bitClear: 16r04])