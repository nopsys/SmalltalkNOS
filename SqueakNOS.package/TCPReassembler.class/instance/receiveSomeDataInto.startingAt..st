compatibility
receiveSomeDataInto: buffer startingAt: index
	"Receive data into the given buffer and return the number of bytes received. Note the given buffer may be only partially filled by the received data."

	^ self next: buffer size - index + 1 into: buffer startingAt: index