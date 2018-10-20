instances creation
bytes: aByteArray offset: anInteger
	| bytes |
	anInteger >= 0 ifTrue: [^ self new bytes: aByteArray; offset: anInteger].
	bytes := ByteArray new: aByteArray size - anInteger.
	bytes replaceFrom: anInteger negated + 1 to: bytes size with: aByteArray.
	^ self new bytes: bytes; offset: 0