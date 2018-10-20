as yet unclassified
testTCPEcho
	| stream |
	stream := eth ip tcp connectTo: self addressOfTestServer port: 7.
	stream nextPutAll: 'hola'; flush.
	[stream waitForReadabilityTimeoutAfter: 1000] on: TimedOut do: [^ self error: 'timed out'].
	self assert: stream nextAvailable = 'hola'.
	stream close