real access
unsignedLongAt: anInteger put: value
	| long |
	(value < 0 or: [ value >= 16r100000000 ]) ifTrue: [ self halt ].
	long := ByteArray with: (value digitAt: 1) with: (value digitAt: 2) with: (value digitAt: 3) with: (value digitAt: 4).
	^self replaceFromByte: anInteger bytesCount: 4 with: long startingAtByte: 1
