services
waitUntilNotBusyOr: maxMilliseconds
	| time status |
	time := Time millisecondClockValue.
	
	[ status := self atAlternateStatusReg. (self busy: status) and: [ Time millisecondClockValue - time < maxMilliseconds ] ] whileTrue.
	"Time millisecondClockValue - time >= maxMilliseconds ifTrue: [Transcript show: 'Not busy timeout. Status: ', status, Character cr ]."