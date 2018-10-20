initialization
initialize
	super initialize.
	reassembler := IPReassembler new.
	reassembler > self.
	self < reassembler.

	ttl := 255.
	tos := 0.
	df := false.
	options := #()