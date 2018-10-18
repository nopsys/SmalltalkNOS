accessing
readSector
	| short status |
	self unsignedByteAt: 6 put: 16rE0.	"(slavebit << 4) | ((addr >> 24) & 0x0F));"
	self unsignedByteAt: 1 put: 16r00.
	self unsignedByteAt: 2 put: 16r01.
	self unsignedByteAt: 3 put: 0.	"; addr"
	self unsignedByteAt: 4 put: 0.	"; addr >> 8"
	self unsignedByteAt: 5 put: 0.	"; addr >> 16"
	"self unsignedByteAt: 7 put: 0x30"	"; write command"
	self unsignedByteAt: 7 put: 16r20.	" ; read command"
	"wait 400ns"
	control
		unsignedByteAt: 1;
		unsignedByteAt: 1;
		unsignedByteAt: 1;
		unsignedByteAt: 1.
	"wait until not busy"
	[ status := control uByteAtOffset: 0.
	(status bitAnd: 2r10000000) = 0 ] whileFalse.

	"do read"
	buffer := ByteArray new: 512.
	1 to: 256 do: [ :i | 
		short := self unsignedShortAt: 0.
		buffer unsignedShortAt: i * 2 - 1 put: short ].
	^ buffer