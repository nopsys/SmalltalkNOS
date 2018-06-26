private
checksumOf: aByteArray from: start to: stop
	| nleft sum pos |
	nleft := stop - start + 1.
	sum := 0.

	pos := start.
	[nleft > 1]
		whileTrue: [sum := (aByteArray at: pos) * 256 + (aByteArray at: pos+1) + sum.
					pos := pos + 2.
					nleft := nleft - 2].

	nleft = 1 ifTrue: [sum := (aByteArray at: pos) * 256 + sum].

	^ self normalizeChecksum: sum