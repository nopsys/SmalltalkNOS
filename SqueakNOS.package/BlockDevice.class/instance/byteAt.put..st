real access
byteAt: anInteger put: value
	| byte |
	(value < 0 or: [ value > 255 ]) ifTrue: [ self halt ].
	byte := ByteArray with: value.
	^self replaceFromByte: anInteger bytesCount: 1 with: byte startingAtByte: 1
