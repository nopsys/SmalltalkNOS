initialization
markEndOfTransfer
	| entry |
	entry := nextEntry = 1 ifTrue: [ self size ] ifFalse: [ nextEntry - 1 ].
	self beEndOfTransferAt: entry 