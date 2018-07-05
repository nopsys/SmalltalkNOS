selecting
selection 
	"Refer to the comment in Inspector|selection."
	selectionIndex <= 1 ifTrue: [^object].
	^ object perform: (self fieldList at: selectionIndex)