instances creation
new: anInteger
	^ (super new: anInteger)
		dataOffset: self headerSize