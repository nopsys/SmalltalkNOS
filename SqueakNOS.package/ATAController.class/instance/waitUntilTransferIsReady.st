services
waitUntilTransferIsReady
	| status |
	[ status := self atAlternateStatusReg.
	(self busy: status)
		ifFalse: [ 
			(self errorOccurred: status)
				ifTrue: [ 'An error occurred during transfer' ] ].
	transferReadyBool ] whileFalse.
	transferReadyBool := false.
	"transferReady wait."
	"self waitUntilNotBusyOr: 1000."