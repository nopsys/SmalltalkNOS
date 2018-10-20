flow
waitForReadabilityTimeoutAfter: timeoutInMilliseconds
	"Wait for readable data, or until timeoutInMilliseconds pass, whichever comes first. -1 is special case wait for ever, also some callers pass zero"

	| deadLine aPacket |
	timeoutInMilliseconds < 0
		ifTrue: [self dataAvailable ifTrue: [^ self].
				inputStream := inputQ next rawDataStream.
				^ self].

	deadLine := Time millisecondClockValue + timeoutInMilliseconds.
	timedOut := false.
	self dataAvailable ifTrue: [^ self].
	aPacket := self nextTimeoutMSecs: timeoutInMilliseconds.
	aPacket isNil ifFalse: [inputStream := aPacket rawDataStream].
	self dataAvailable
		ifFalse: [(deadLine - Time millisecondClockValue - 1) < 0 ifTrue: [timedOut := true].
				TimedOut new signal]