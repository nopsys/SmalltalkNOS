instances creation
new: anInteger
	^ self bytes: (ByteArray new: 1500) offset: 1500 - anInteger - self headerSize
"
Note: the number 1500 is the default buffer size, a number supposedly close to (and not smaller than) the average packet size.
"