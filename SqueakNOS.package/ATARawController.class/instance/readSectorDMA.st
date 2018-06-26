accessing
readSectorDMA
	| command status o |
	self selectFirstSector.
	self unsignedByteAt: 7 put: 16rC8.	" ; read DMA command"
	buffer unsignedLongAt: 1 put: buffer asInteger + 16r1000.
	buffer unsignedLongAt: 5 put: 16r80000200.	"size + end-of-transfer"

	"clear start/stop bit"
	command := busMaster unsignedByteAt: 0 + 1.
	busMaster unsignedByteAt: 0 + 1 put: (command bitAnd: 16rFE).
	busMaster unsignedLongAt: 4 + 1 put: buffer asInteger.	"set prdt"

	"set read bit"
	command := busMaster unsignedByteAt: 0 + 1.
	busMaster unsignedByteAt: 0 + 1 put: (command bitOr: 8).

	"clear interrupt and error status"
	status := busMaster unsignedByteAt: 2 + 1.
	busMaster unsignedByteAt: 2 + 1 put: (status bitAnd: 16rF3).

	"set start/stop bit"
	command := busMaster unsignedByteAt: 0 + 1.
	busMaster unsignedByteAt: 0 + 1 put: (command bitOr: 1).
	o := OrderedCollection new.
	[ interrupted ] whileFalse: [ o add: 1; removeFirst ]