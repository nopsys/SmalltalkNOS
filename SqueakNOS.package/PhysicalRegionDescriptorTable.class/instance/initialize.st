initialization
initialize
	| size aligned |
	nextEntry := 1.
	size := 64 * 1024.
	address := ExternalAddress allocate: size * 2 - 1.
	aligned := address asInteger alignedTo: size.
	address fromInteger: aligned.
	"1 to: size do: [:i | address byteAt: i put: 0 ]"