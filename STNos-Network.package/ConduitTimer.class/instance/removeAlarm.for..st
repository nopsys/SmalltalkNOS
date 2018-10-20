accessing
removeAlarm: aSelector for: anObject
	| oldAlarms |
	oldAlarms := alarms.
	alarms := self newAlarmsHeap.
	oldAlarms do: [ :each |
		(each receiver == anObject and: [each selector == aSelector])
			ifFalse: [alarms add: each]].
	alarms isEmpty ifTrue: [self down]