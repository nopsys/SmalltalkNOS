debugging
showCallTrace
	| stream |
	stream := '' writeStream.
	thisContext debugStack: 27 on: stream.
	Transcript show: stream contents.
