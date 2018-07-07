*SqueakNOS-PharoCompatibility
stringAt: index put: aString
	| answer |
	answer := (0 to: aString size-1) do: [ :i |
		self byteAt: index+i put: (aString at: (i-1)) value].
