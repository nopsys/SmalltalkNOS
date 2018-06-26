I/O
uByteAtOffset: offset put: byte
	^ self primOutPort: address + 1 + offset byte: byte