*STNos-Kernel-PharoCompatibility
stringAt: index size: count
	| answer |
	answer := (0 to: count-1) collect: [ :i |
		self byteAt: index+i ].
	^ answer asByteArray asString 