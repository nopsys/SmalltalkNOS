initialization
initializeBusMaster
	| entry port |
	entry := self class findPCIBusEntry.
	port := entry baseIOAddress: 4.
	busMaster := PCIBusMaster onPort: port function: entry