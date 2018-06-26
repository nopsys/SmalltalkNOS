accessing
routeTo: aNetAddress ifNone: exceptionBlock
	^ routes detect: [ :one | one destination includes: aNetAddress] ifNone: exceptionBlock