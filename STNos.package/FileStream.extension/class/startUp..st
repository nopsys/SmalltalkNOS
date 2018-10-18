*STNos-PharoCompatibility
startUp: isImageStarting
	Computer isSqueakNOS ifTrue: [^self].
	isImageStarting
		ifFalse: [ ^ self ].
	self voidStdioFiles.
	[ TheStdioHandles := self stdioHandles ]
		on: Error
		do: [ :ex | 
			TheStdioHandles isArray
				ifFalse: [ TheStdioHandles := Array new: 3 ] ]