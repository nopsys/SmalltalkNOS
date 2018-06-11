converting
unsignedLongAt: index
	(1 <= index and: [ index + 3 <= size ]) ifFalse: [ self errorInBounds: index ].
	^contents unsignedLongAt: index + offset