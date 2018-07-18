*SqueakNOS-Net
nextTimeoutSeconds: anInteger
	readSynch waitTimeoutSeconds: anInteger.
	self isEmpty ifTrue: [^ nil].
	^ self privateNext