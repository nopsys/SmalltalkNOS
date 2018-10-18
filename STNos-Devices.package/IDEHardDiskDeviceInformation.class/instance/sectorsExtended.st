accessing
sectorsExtended
	"writtenByHand"

	| lo hi |
	lo := handle unsignedLongAt: 201.
	hi := handle unsignedShortAt: 205.
	^lo + (hi bitShift: 32)