accessing
blocks
	^ (1 to: self numberOfBlocks) collect: [ :each | self blockAt: each]