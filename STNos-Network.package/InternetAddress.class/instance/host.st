accessing
host
	| bits |
	bits := BitArray bytes: bytes.
	self isClassA ifTrue: [^ (bits copyFrom: 9 to: 32) asInteger].
	self isClassB ifTrue: [^ (bits copyFrom: 17 to: 32) asInteger].
	self isClassC ifTrue: [^ (bits copyFrom: 25 to: 32) asInteger].
	^ nil