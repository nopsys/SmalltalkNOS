enumerating
do: aBlock
	| index |
	segments isEmpty ifTrue: [^ self].
	index := sequence.
	segments do: [ :each |
		each lastSequence < index "ignore retransmissions"
			ifFalse: [(index between: each sequence and: each lastSequence)
						ifFalse: [^ self].
					aBlock value: each.
					index := each nextSequence]]