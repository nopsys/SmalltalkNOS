initialization
advanceEntry
	nextEntry := nextEntry = self size ifTrue: [ 1 ] ifFalse: [ nextEntry + 1 ].
 