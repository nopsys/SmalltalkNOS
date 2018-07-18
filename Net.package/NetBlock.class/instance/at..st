accessing
at: anInteger
	| bits orBits newBit |
	bits := anInteger.
	orBits := (BitArray bytes: mask bytes reversed)
		collect: [ :each |
			each = 0
				ifTrue: [newBit := bits bitAnd: 1. bits := bits bitShift: -1. newBit]
				ifFalse: [0]].
	^ address & mask | (NetAddress bytes: orBits asByteArray reversed)