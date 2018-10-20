accessing
at: aBlockNumber
	"Retrieve sector number aBlockNumber from device"
	| start end |
	start := aBlockNumber - 1 * blockSize + 1.
	end := start + blockSize. 
	^contents copyFrom: start to: end