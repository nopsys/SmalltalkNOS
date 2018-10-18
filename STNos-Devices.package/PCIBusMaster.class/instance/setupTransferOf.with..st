initialization
setupTransferOf: size with: buffer
	| position |
	"buffer replaceFrom: 1 to: size with: 0."
	position := buffer asInteger + offset.
	self
		entriesFor: size
		do: [ :chunkSize | 
			table
				atNextFreeEntryPutSize: chunkSize address: position;
				advanceEntry.
			position := position + chunkSize ].
	table markEndOfTransfer
	"offset := offset + size"