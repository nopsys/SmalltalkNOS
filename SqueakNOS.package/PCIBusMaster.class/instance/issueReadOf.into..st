initialization
issueReadOf: size into: target
	| position |
	position := target.
	self setDirectionToRead; clearInterruptAndErrorBits.
	self entriesFor: size do:  [ :chunkSize |
		self atNextFreeEntryPutSize: chunkSize address: position; advanceEntry.
		position := position + chunkSize ].
	
	self markEndOfTransfer.
	