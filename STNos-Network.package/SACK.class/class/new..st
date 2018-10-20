instance creation
new: anInteger
	| length |
	length := anInteger * 4 * 2 + 2.
	^ self bytes:
		((ByteArray new: length)
				at: 1 put: self type;
				at: 2 put: length;
				yourself)