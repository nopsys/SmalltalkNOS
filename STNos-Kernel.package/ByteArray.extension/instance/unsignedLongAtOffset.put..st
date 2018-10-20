*STNos-Kernel-Storage
unsignedLongAtOffset: byteOffset put: value
	^ self unsingedLongAt: byteOffset + 1 put: value