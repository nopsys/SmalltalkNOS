initialization
issueReadOf: size into: target
	| position |
	position := target.
	self setDirectionToRead; clearInterruptAndErrorBits.
	self entriesFor: size do:  [ :chunkSize |
		table atNextFreeEntryPutSize: chunkSize address: position; advanceEntry.
		position := position + chunkSize ].
	
	table markEndOfTransfer.
	