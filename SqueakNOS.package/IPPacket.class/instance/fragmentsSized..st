accessing
fragmentsSized: anInteger
	| fragmentsSize fragmentOffset prototype fragments |
	anInteger >= self size ifTrue: [^ Array with: self].
	fragmentOffset := 0.
	fragmentsSize := anInteger - self headerSize truncateTo: 8.
	prototype := self class new: anInteger.
	prototype replaceFrom: 1 to: self headerSize with: self startingAt: 1.
	fragments := (1 to: self length + fragmentsSize - 1 // fragmentsSize) collect: [:index |
		fragmentOffset := index - 1 * fragmentsSize + self fragmentOffset.
		prototype copy
			fragmentOffset: fragmentOffset;
			length: fragmentsSize + self headerSize;
			mf: true;
			replaceFrom: prototype headerSize + 1 to: prototype size with: self bytes startingAt: self offset + self headerSize + 1;
			setChecksum].
	fragments last mf: self mf.
	self length - self headerSize \\ fragmentsSize = 0
		ifFalse: [fragments last
					length: (self length - self headerSize \\ fragmentsSize) + self headerSize].
	fragments last setChecksum.
	^ fragments