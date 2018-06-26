helpers
pseudoHeaderChecksum
	^ self normalizeChecksum: (self checksumFrom: 13 to: 20) + self protocol + self length - self headerSize