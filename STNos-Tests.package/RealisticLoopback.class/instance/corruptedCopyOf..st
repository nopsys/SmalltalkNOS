as yet unclassified
corruptedCopyOf: aPacket
	| corrupted |
	corruptionRate <= 0 ifTrue: [^ aPacket].
	corrupted := aPacket copy.
	1 to: corrupted size do: [ :each |
		random next < corruptionRate
			ifTrue: [corrupted at: each put: (random next * 256) truncated]].
	^ corrupted