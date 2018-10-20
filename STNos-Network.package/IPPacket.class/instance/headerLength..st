accessing
headerLength: anInteger
	self at: 1 put: ((self at: 1) bitOr: anInteger // 4)