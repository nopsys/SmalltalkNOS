as yet unclassified
setUp
	reassembler := TCPReassembler new.
	reassembler sequence: 0.
	stream := NetStream on: reassembler