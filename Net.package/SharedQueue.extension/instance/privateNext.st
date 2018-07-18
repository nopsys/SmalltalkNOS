*Net
privateNext
	| value |
	accessProtect
		critical: [readPosition = writePosition
					ifTrue: 
						[self error: 'Error in SharedQueue synchronization'.
						 value := nil]
					ifFalse: 
						[value := contentsArray at: readPosition.
						 contentsArray at: readPosition put: nil.
						 readPosition := readPosition + 1]].
	^value