as yet unclassified
testTCPEcho2
	| stream |
	stream := eth ip tcp connectTo: self addressOfTestServer port: 7.
	self assert: stream dataAvailable not.
	stream nextPutAll: 'hola'; flush.
	[stream waitForReadabilityTimeoutAfter: 1000] on: TimedOut do: [^ self error: 'timed out'].
	self assert: stream nextAvailable = 'hola'.
	self assert: stream dataAvailable not.
	stream nextPutAll: 'chau'; flush.
	[stream waitForReadabilityTimeoutAfter: 1000] on: TimedOut do: [^ self error: 'timed out'].
	self assert: stream nextAvailable = 'chau'.
	self assert: stream dataAvailable not.
	stream close