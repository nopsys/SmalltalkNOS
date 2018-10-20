initialization
initialize
	super initialize.
	inputStream := '' readStream.
	inputQ := SharedQueue new