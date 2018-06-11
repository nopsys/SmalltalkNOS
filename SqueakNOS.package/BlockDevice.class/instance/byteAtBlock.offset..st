real access
byteAtBlock: blockNumber offset: blockOffset
	^(self at: blockNumber) at: blockOffset + 1
