accessing
selectFirstSector
	self unsignedByteAt: 6 put: 16rE0.	"(slavebit << 4) | ((addr >> 24) & 0x0F));"
	self unsignedByteAt: 1 put: 16r00.
	self unsignedByteAt: 2 put: 16r01.
	self unsignedByteAt: 3 put: 0.	"; addr"
	self unsignedByteAt: 4 put: 0.	"; addr >> 8"
	self unsignedByteAt: 5 put: 0.	"; addr >> 16"
