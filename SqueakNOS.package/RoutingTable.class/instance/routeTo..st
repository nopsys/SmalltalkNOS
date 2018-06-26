accessing
routeTo: aNetAddress
	^ self routeTo: aNetAddress ifNone: [default]