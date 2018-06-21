initialization
atNextFreeEntryPutSize: size address: target
	| offset encoded |
	offset := self offsetOfEntry: nextEntry.
	encoded := size = 65536 ifTrue: [ 0 ] ifFalse:  [ size ].
	address unsignedLongAt: 1 + offset put: target; unsignedLongAt: 1 + offset + 4 put: encoded.