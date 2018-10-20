arithmetic
not
	^ self class bytes: (bytes collect: [ :each | each bitInvert])