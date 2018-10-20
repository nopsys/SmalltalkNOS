initialization
initialize
	super initialize.
	windowSize := 4096.
	mss := 536. "1460."
	reassembler := TCPReassembler new.
	self state: TCPClosed new.

	sequence := TCPSequenceNumber value: 16r100000000 atRandom - 1.
	lastAcknowledged := sequence - 1.
	sendingWindowSize := 1. "whatever"
	self sender: TCPIdle new