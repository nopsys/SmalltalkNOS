helpers
setChecksum
	self checksum: 0.
	self checksum: 16rFFFF - self computeChecksum