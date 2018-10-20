accessing
net
	| bits |
	bits := BitArray bytes: bytes.
	self isClassA ifTrue: [^ (bits copyFrom: 2 to: 2+7-1) reversed asInteger].
	self isClassB ifTrue: [^ (bits copyFrom: 3 to: 3+14-1) reversed asInteger].
	self isClassC ifTrue: [^ (bits copyFrom: 4 to: 4+21-1) reversed asInteger].
	^ nil