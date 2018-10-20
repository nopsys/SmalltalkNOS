accessing
at: anInteger put: bit
	contents := contents bitOr: (bit bitShift: anInteger-1).
	^ bit