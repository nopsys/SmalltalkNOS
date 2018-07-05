initialization
initializeBusMaster
	| entry port |
	entry := self class findPCIBusEntry.
	entry enableBusMastering.
	port := entry baseIOAddress: 4.
	busMaster := PCIBusMaster onPort: port function: entry

