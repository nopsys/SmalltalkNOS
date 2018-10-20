testing
isMulticast
	^ (self bytes at: 1) = 16r01
		and: [(self bytes at: 2) = 16r00
			and: [(self bytes at: 3) = 16r5E]]