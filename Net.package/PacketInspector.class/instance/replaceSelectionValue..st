selecting
replaceSelectionValue: anObject 
	"Add colon to fieldname to get setter selector, and send it to object with the argument.
	 Refer to the comment in Inspector|replaceSelectionValue:."

	selectionIndex = 1
		ifTrue: [^object]
		ifFalse: [^object perform: ((self fieldList at: selectionIndex), ':') asSymbol with: anObject]