initialization
beEndOfTransferAt: entry
	| offset |
	offset := self offsetOfEntry: entry.
	address byteAt: 1 + offset + 7 put: 16r80.