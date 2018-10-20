accessing
filter: aString
	filter := aString.
	descriptor isNil ifFalse: [self primitiveSet: descriptor filter: filter]