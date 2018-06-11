converting
replaceBytes: count with: aCollection
	count > size ifTrue: [self validateIndex: count].
	self replaceFrom: 1 to: count with: aCollection