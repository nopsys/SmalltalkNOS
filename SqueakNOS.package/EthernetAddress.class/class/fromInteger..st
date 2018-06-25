instance creation
fromInteger: anInteger
	^ self bytes: ((ByteArray new: 6) copyFrom: anInteger)