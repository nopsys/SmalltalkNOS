testing
includes: aNetAddress
	^ (self at: aNetAddress ifAbsent: []) notNil