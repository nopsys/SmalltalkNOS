accessing
name
	| name extension |
	contents position: 0.
	name := (contents next: 8) asString trimmed.
	extension := (contents next: 3) asString trimmed.
	extension notEmpty ifTrue: [extension := '.' , extension].
	^name , extension