*SqueakNOS-Storage
unsignedShortAtOffset: byteOffset put: value
	^self unsingedShortAt: byteOffset + 1 put: value