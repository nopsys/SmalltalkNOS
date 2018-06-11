real access
byteAtOffset: anInteger
	
	| blockNumber blockOffset |
	blockNumber := self blockNumberFromByteOffset: anInteger.
	blockOffset := anInteger \\ 512.
	^self byteAtBlock: blockNumber offset: blockOffset.
