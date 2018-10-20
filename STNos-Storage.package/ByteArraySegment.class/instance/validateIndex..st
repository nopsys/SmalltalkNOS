converting
validateIndex: index
	(index between: 1 and: size) ifFalse: [self errorInBounds: index]