waiting
waitForReadabilityTimeoutAfter: timeoutInMilliseconds
	"Wait for readable data, or until timeoutInMilliseconds pass, whichever comes first. -1 is special case wait for ever, also some callers pass zero"

	| deadLine semaphore remainingMSecs |
	remainingMSecs := timeoutInMilliseconds.
	deadLine := Time millisecondClockValue + remainingMSecs.
	semaphore := Semaphore new.
	self when: #dataArrived send: #signal to: semaphore.
	[self dataAvailable]
		whileFalse: [(timeoutInMilliseconds ~~ -1 and: [(remainingMSecs := deadLine - Time millisecondClockValue) <= 0])
						ifTrue: [^ TimedOut new signal].
					semaphore waitTimeoutMSecs: remainingMSecs].
	self dataAvailable ifFalse: [TimedOut new signal]