accessing
shortAt: anInteger put: aShort
	self at: anInteger put: aShort // 256.
	self at: anInteger+1 put: aShort \\ 256.
	^ aShort