testing
isBroadcast
	^ self bytes allSatisfy: [ :each | each = 255]