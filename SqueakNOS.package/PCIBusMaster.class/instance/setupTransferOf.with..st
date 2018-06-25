initialization
setupTransferOf: size with: buffer
	| position |
	position := buffer asInteger.
	self
		entriesFor: size
		do: [ :chunkSize | 
			table
				atNextFreeEntryPutSize: chunkSize address: position;
				advanceEntry.
			position := position + chunkSize ].
	table markEndOfTransfer