as yet unclassified
input: aPacket
	random next < dropRate ifTrue: [^ self].
	random next < unsortRate ifTrue: [^ self output: aPacket]. "re-enqueue it"
	aPacket size < minimumSize ifTrue: [aPacket class bytes: (aPacket asByteArray, (ByteArray new: minimumSize - aPacket size))]. "pad to minimum size"
	(Delay forMilliseconds: (minDelay to: maxDelay) atRandom) wait.
	super input: (self corruptedCopyOf: aPacket)