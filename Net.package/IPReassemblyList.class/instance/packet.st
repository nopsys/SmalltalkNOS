accessing
packet
	| answer start |
	answer := IPPacket new: fragments last fragmentOffset + fragments last length - fragments last headerSize.
	answer replaceFrom: 1 to: fragments first headerSize with: fragments first startingAt: 1.
	answer mf: false.
	fragments do: [ :each |
		start := answer headerSize + 1 + each fragmentOffset.
		answer replaceFrom: start to: start + each length - each headerSize - 1 with: each startingAt: each headerSize + 1].
	answer length: answer size.
	answer setChecksum.
	^ answer