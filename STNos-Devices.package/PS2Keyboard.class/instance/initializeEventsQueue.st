initialization
initializeEventsQueue
	| p block |
	events := SharedQueue new.
	Computer isPharo
			   ifTrue: [ block := [ Sensor handleEvent: events next ] ]
			   ifFalse: [ block := [ Sensor processEvent: events next] ].
	p := [ block repeat] forkAt: Processor highIOPriority.
	
	p name: 'PS2Keboard shared queue poll'