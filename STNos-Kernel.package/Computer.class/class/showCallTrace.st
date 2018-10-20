debugging
showCallTrace
	| stream |
	stream := '' writeStream.
	thisContext printDebugOn: stream.
	Transcript show: stream contents.
