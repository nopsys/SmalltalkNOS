private
triggerPendingAlarms
	"Trigger all pending alarms."
	| alarm time |
	time := self time.
	[alarms isEmpty not and:[alarms first scheduledTime < time]]
		whileTrue: [alarm := alarms removeFirst.
					alarm value: time.
					alarm stepTime notNil
						ifTrue: [alarm scheduledTime: time + alarm stepTime.
								alarms add: alarm]]