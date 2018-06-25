printing
printOn: aStream
	| bits index |
	aStream print: address.
	bits := BitArray bytes: mask bytes.
	index := bits findLast: [ :one | one = 1].
	index + 1 = (bits findFirst: [ :one | one = 0])
		ifTrue: [aStream nextPut: $/; print: index]
		ifFalse: [aStream space; print: mask]