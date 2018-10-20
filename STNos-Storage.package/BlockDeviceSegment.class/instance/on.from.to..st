initialization
on: aBlockStorage from: start to: stop
	device := aBlockStorage.
	offset := start - 1.
	size := stop - start + 1 . size >= 0
		ifFalse: [ self halt ]