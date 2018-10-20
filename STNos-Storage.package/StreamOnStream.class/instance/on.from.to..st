accessing
on: aStream from: anIndex to: anOffset
	stream := aStream clone.
	stream setFrom: anIndex to: anOffset.
	self setFrom: 1 to: anOffset - anIndex.
	offset := anIndex.
	self binary