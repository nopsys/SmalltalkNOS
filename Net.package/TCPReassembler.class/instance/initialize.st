initialization
initialize
	sequence := TCPSequenceNumber value: 0.
	segments := SortedCollection sortBlock: [ :a :b | a sequence <= b sequence].
	stream := ByteArray new readStream