as yet unclassified
reservedSectors: anInteger
	^ bytes unsignedShortAt: 16r0F put: anInteger 
	