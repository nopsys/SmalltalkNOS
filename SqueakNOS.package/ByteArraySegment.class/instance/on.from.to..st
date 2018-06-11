converting
on: aByteArray from: start to: stop
	contents := aByteArray.
	offset := start - 1.
	size := stop - start + 1 . size >= 0
		ifFalse: [ self halt ]