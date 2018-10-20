as yet unclassified
waitForWritabilityTimeoutAfter: timeoutInMilliseconds
	| semaphore |
	semaphore := Semaphore new.
	self when: #transition send: #signal to: semaphore.
	semaphore waitTimeoutMSecs: timeoutInMilliseconds.
	socket sendingWindowSize > 0 ifFalse: [TimedOut new signal]