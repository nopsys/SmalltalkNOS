accessing
longAt: anInteger put: aLong
	self shortAt: anInteger put: aLong // 16r10000.
	self shortAt: anInteger+2 put: aLong \\ 16r10000.
	^ aLong