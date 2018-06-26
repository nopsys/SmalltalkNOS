accessing
nextAvailable
	self dataAvailable ifFalse: [^ ByteArray new].
	^ stream upToEnd