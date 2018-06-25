status/testing
waitUntilDeviceIsReadyForTransfer
	| status |
	[ status := self atAlternateStatusReg.
	(self busy: status) & (self errorsDidntOccur: status) ] whileTrue.
	(self errorOccurred: status)
		ifTrue: [ self error: 'An error occurred while preparing transfer' ].
	^ self dataReady: status