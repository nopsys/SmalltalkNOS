services
at: aBlockNumber
	"Retrieve sector number aBlockNumber from device"

	^ controller at: aBlockNumber count: 1 of: deviceNumber	"Decrement 1 because block num comes 1-based and LBA indexes are 0-based"