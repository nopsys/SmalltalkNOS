as yet unclassified
numberOfCopiesOfFAT: anInteger
	^ bytes unsignedByteAt: 16r11 put: anInteger