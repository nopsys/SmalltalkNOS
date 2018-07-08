*SqueakNOS-PharoCompatibility
stringAt: index put: aString
	1 to: aString size do: [ :i |
		self byteAt: index+i-1 put: (aString at: i asciiValue)].
