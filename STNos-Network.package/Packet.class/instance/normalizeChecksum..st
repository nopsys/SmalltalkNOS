helpers
normalizeChecksum: anInteger
	| sum |
	sum := anInteger.
	sum := sum >> 16 + (sum bitAnd: 16rFFFF).		"add hi 16 + low 16".
	sum := sum >> 16 + sum.		"add carry"
	^ sum bitAnd: 16rFFFF		"truncate to 16 bits"