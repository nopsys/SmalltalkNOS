as yet unclassified
test05Creation
	self shouldnt: [ATAController primary master] raise: Error.
	self shouldnt: [ATAController secondary slave] raise: Error.
