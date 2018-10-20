accessing
name
	| bytes name extension |
	bytes := contents asByteArray.
	name := (String new: 8)
		replaceFrom: 1
			to: 8
			with: bytes
			startingAt: 1;
		trimmed.
	extension := (String new: 3)
		replaceFrom: 1
			to: 3
			with: bytes
			startingAt: 9;
		trimmed.
	extension notEmpty
		ifTrue: [ extension := '.' , extension ].
	^ name , extension 