*SqueakNOS-PharoCompatibility
stringAt: offset size: count
	| answer |
	answer := (0 to: count-1) collect: [ :i |
		self byteAt: offset+i ].
	^ answer asByteArray asString 