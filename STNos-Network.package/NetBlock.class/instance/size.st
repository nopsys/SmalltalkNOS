accessing
size
	^ 2 raisedTo: ((BitArray bytes: mask bytes) occurrencesOf: 0)