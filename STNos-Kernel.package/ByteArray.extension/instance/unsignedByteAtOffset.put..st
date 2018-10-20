*STNos-Kernel-Storage
unsignedByteAtOffset: byteOffset put: value
	^ self unsingedByteAt: byteOffset + 1 put: value