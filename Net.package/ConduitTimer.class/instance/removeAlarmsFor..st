accessing
removeAlarmsFor: anObject
	| oldAlarms |
	oldAlarms := alarms.
	alarms := self newAlarmsHeap.
	oldAlarms do: [ :each | each receiver == anObject ifFalse: [alarms add: each]].
	alarms isEmpty ifTrue: [self down]