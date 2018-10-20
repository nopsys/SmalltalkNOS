private
resetFlags: aNumber
	^ self shortAt: 13 put: (self flags bitAnd: aNumber bitInvert)
