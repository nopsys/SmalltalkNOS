converting
/ anInteger
	^ NetBlock new address: self; mask: (self class bytes: (BitArray new: self size * 8 with: (1 bitShift: anInteger) - 1) asByteArray)