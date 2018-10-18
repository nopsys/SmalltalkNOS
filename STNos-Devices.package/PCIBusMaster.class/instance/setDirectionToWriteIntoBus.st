initialization
setDirectionToWriteIntoBus
	self command: (self command bitOr: 2r00001000)