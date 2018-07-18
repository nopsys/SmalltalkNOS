accessing
blockAt: anInteger
	| firstIndex |
	firstIndex := anInteger - 1 * 8 + 2 + 1.
	^ Interval
		from: (TCPSequenceNumber value: (self longAt: firstIndex))
		to: (TCPSequenceNumber value: (self longAt: firstIndex + 4))