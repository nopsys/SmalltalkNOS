initialization
installOn: aComputer
	self registerSemaphore.
	process := [ [ semaphore wait.
	self handleOn: aComputer.
	interruptNumber = 46 ifTrue: [ Transcript show: 'irq ended' ].
	aComputer interruptController signalEndOfInterrupt: interruptNumber ] repeat ]
		forkAt: Processor highIOPriority.
	process name: 'Iterrupt Dispatcher for IRQ#:' , interruptNumber printString.
	aComputer interruptController enableIRQ: interruptNumber