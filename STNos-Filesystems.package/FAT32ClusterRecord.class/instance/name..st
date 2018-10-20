accessing
name: aString
	aString size = 11 ifFalse: [self error: 'The string is not in a suitable format'].
	contents replaceFrom: 1 to: 11 with: aString asByteArray startingAt: 1
	
