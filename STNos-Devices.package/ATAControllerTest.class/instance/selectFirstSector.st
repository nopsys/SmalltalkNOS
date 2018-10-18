tests
selectFirstSector
	controller unsignedByteAt: 6 put: 16rE0.	"(slavebit << 4) | ((addr >> 24) & 0x0F));"
	controller unsignedByteAt: 1 put: 16r00.
	controller unsignedByteAt: 2 put: 16r01.
	controller unsignedByteAt: 3 put: 0.	"; addr"
	controller unsignedByteAt: 4 put: 0.	"; addr >> 8"
	controller unsignedByteAt: 5 put: 0	"; addr >> 16"