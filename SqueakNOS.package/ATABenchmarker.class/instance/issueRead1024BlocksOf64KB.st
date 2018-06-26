services
issueRead1024BlocksOf64KB
	| read magic |
	self
		at: 'Read 1024 blocks of 64 KB'
		benchmark: [ | offset |
			offset := 0.
			1024
				timesRepeat: [ read := controller
						issueReadFrom: offset
						count: 128
						device: 0
						timeout: 5000.
					offset = 0
						ifTrue: [ magic := read unsignedShortAt: 511 ].
					offset := offset + 128 ] ]
		size: 1024 * 128 * 512.
	self validateResult: magic