services
issueRead1024BlocksOf4KB
	| read magic |

	self
		at: 'Read 1024 blocks of 4 KB'
		benchmark: [ | offset |
			offset := 0.
			1024
				timesRepeat: [ read := controller
						issueReadFrom: offset
						count: 8
						device: 0
						timeout: 5000.
					offset = 0
						ifTrue: [ magic := read unsignedShortAt: 511 ].
					offset := offset + 8 ] ]
		size: 1024 * 8 * 512.
	self validateResult: magic