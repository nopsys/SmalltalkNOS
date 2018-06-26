accessing
initialize
	| port |
	interrupted := false.
	buffer := ExternalAddress allocate: 128 * 1024.
	buffer fromInteger: (buffer asInteger alignedTo: 64 * 1024).

	control := ExternalIOPort address: 16r3F6.
	port := ATAController findPCIBusEntry baseIOAddress: 4.
	busMaster := ExternalIOPort address: port.
	Computer current interruptController addHandler: self forIRQ: 14.
	self unsignedByteAt: 6 put: 0.	"select disk"
	control uByteAtOffset: 1 put: 2r00001000	"clearing nIEN bit"