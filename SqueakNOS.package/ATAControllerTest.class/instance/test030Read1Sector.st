tests
test030Read1Sector
	| sector magic |
	sector := controller
		issueReadFrom: 0
		count: 1
		device: 0
		timeout: 1000.
	magic := sector unsignedShortAt: 511.
	self assert: magic equals: 16rAA55