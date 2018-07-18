*SqueakNOS-Net
nextTimeoutMSecs: anInteger
	readSynch waitTimeoutMSecs: anInteger.
	self isEmpty ifTrue: [^ nil].
	^ self privateNext