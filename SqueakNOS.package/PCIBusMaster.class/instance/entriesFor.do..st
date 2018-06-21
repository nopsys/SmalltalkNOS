initialization
entriesFor: size do: aBlock
	| remaining chunkSize |
	remaining := size.
	[ remaining > 0 ] whileTrue: [
		chunkSize := remaining min: 65536.
		aBlock value: chunkSize.
		remaining := remaining - chunkSize]

	