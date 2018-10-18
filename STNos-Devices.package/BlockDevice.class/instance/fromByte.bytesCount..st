instance creation
fromByte: byteIndex bytesCount: bytesCount
	| data firstBlock lastBlock firstBlockBytesOffset |
	firstBlock := self blockNumberFromByteIndex: byteIndex.
	lastBlock := self blockNumberFromByteIndex: byteIndex + bytesCount - 1.
	data := self from: firstBlock to: lastBlock.
	firstBlockBytesOffset := (byteIndex - 1) \\ 512 + 1.
	^ data copyFrom: firstBlockBytesOffset to: firstBlockBytesOffset + bytesCount - 1