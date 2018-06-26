initialization
initialize
	super initialize.
	reassembler := IPReassembler new.
	reassembler > self.
	self < reassembler.
	self | ICMP new.
	raw := Conduit new