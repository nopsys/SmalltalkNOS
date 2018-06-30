real access
unsignedShortAt: anInteger put: value
	| short |
	(value < 0 or: [ value >= 16r10000 ]) ifTrue: [ self halt ].
	short := ByteArray with: (value digitAt: 1) with: (value digitAt: 2).
	^self replaceFromByte: anInteger bytesCount: 2 with: short startingAtByte: 1
