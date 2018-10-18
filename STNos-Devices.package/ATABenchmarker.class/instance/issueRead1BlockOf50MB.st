services
issueRead1BlockOf50MB
	| magic |
	self
		at: 'Read 1 block of 50 MB'
		benchmark: [ magic := (controller at: 1 count: 102400 of: 0) unsignedShortAt: 511 ]
		size: 102400 * 512.
		self validateResult: magic