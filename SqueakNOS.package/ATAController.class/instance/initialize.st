initialization
initialize
	"buffer size is large enough to handle largest ata read, which is
	 256 sectors (128kb) and also aligned to 64kb for dma requirements"

	buffer := ExternalAddress allocate: 64 * 3 * 1024.
	buffer fromInteger: (buffer asInteger alignedTo: 64 * 1024).
	transferReady := Semaphore new.
	transferReadyBool := false.
	busy := Semaphore forMutualExclusion