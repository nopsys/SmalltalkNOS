helpers
computeChecksum
	^ self normalizeChecksum: self envelope pseudoHeaderChecksum + (self checksumFrom: 1 to: self size)