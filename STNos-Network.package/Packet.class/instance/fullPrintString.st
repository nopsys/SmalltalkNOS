printing
fullPrintString
	^ String streamContents: [ :stream | self fullPrintOn: stream]