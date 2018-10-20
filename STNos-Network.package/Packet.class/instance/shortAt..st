accessing
shortAt: anInteger
	^ (self at: anInteger) * 256 + (self at: anInteger+1)