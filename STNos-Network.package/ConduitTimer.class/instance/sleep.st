private
sleep
	| msecs |
	alarms isEmpty
		ifTrue: [msecs := 1000]
		ifFalse: [msecs := alarms first scheduledTime - self time].
	msecs > 0 ifFalse: [^ self].
	(Delay forMilliseconds: (msecs min: 1000)) wait