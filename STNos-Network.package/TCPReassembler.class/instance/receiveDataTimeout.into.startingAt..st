compatibility
receiveDataTimeout: seconds into: buffer startingAt: index
	self waitForReadabilityTimeoutAfter: seconds * 1000.
	^ self next: buffer size - index + 1 into: buffer startingAt: index