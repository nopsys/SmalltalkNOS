accessing
longAt: anInteger
	^ (self shortAt: anInteger) * 16r10000 + (self shortAt: anInteger + 2)