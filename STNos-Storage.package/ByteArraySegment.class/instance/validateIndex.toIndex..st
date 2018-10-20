converting
validateIndex: start toIndex: end
	1 <= start ifFalse: [self errorInBounds: start].
	end <= size ifFalse: [self errorInBounds: end]