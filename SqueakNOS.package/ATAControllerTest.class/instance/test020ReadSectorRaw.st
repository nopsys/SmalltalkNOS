tests
test020ReadSectorRaw
	"read boot sector, which ends in the magic number 0xAA55"

	| status buffer short |
	self selectFirstSector.
	controller unsignedByteAt: 7 put: 16r20.	" ; read command"

	"wait until not busy"
	[ status := controller control uByteAtOffset: 0.
	(status bitAnd: 2r10000000) = 0 ] whileFalse.

	"do read"
	buffer := ByteArray new: 512.
	1 to: 256 do: [ :i | 
		short := controller unsignedShortAt: 0.
		buffer unsignedShortAt: i * 2 - 1 put: short ].
	self assert: short equals: 16rAA55