initialization
initializeControlBlock
	| port isPrimary |
	isPrimary := resource asInteger = 16r1F0.
	port := isPrimary
		ifTrue: [ 16r3F6 ]
		ifFalse: [ 16r376 ].
	control := ExternalIOPort address: port.
	self
		selectDrive: 0;
		resetController;
		enableInterrupts;
		selectDrive: 1;
		enableInterrupts;
		selectDrive: 0