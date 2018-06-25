instance creation
onPort: portNumber
	^ (super onPort: portNumber) initializeControlBlock; initializeBusMaster