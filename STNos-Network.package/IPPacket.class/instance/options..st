accessing
options: aCollection
	| index |
	index := 21.
	aCollection do: [ :each |
		(index + each size - 1) >= self headerSize ifTrue: [^ self error: 'not enough space for options'].
		self replaceFrom: index to: index + each size - 1 with: each.
		index := index + each size]