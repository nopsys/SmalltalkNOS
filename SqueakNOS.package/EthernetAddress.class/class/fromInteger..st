instance creation
fromInteger: anInteger
	^ self bytes: (anInteger asByteArrayOfSize: 6)