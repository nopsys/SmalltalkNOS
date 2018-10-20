testing
isBroadcast
	^ bytes allSatisfy: [ :each | each = 255]