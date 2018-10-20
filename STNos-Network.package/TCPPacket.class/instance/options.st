accessing
options
	| answer index option |
	answer := OrderedCollection new.
	index := 20.
	[index >= self headerSize]
		whileFalse: [option := TCPOption bytes: bytes offset: offset + index.
					option size = 0 ifTrue: [^ self error: 'Zero size option'].
					index := index + option size.
					option isEOL ifTrue: [^ answer].
					answer add: option].
	^ answer