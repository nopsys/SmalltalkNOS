private
setFlags: aNumber
	^ self shortAt: 13 put: (self flags bitOr: aNumber)