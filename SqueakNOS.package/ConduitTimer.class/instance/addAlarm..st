accessing
addAlarm: aConduitAlarm
	Transcript cr; show: 'New alarm: ', aConduitAlarm printString.
	alarms add: aConduitAlarm.
	process isNil ifTrue: [self up].
	^ aConduitAlarm