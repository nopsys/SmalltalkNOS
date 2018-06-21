initialization
initializeBusMaster
	| entry port |
	buffer := ExternalAddress allocate: 1024 * 1024.
	buffer fromInteger: (buffer asInteger alignedTo: 64 * 1024).
	semaphore := Semaphore new.
	entry:= self class findPCIBusEntry.
	port := entry baseIOAddress: 4.
	busMaster := PCIBusMaster onPort: port