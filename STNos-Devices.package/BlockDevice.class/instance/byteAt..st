real access
byteAt: anInteger
	"blockNumberFromByteOffset: is 1-based"
	| blockNumber blockOffset |
	blockNumber := self blockNumberFromByteIndex: anInteger.
	blockOffset := anInteger - 1 \\ 512.
	^self byteAtBlock: blockNumber offset: blockOffset.
