as yet unclassified
at: anInteger
	(anInteger > 0 and: [anInteger <= tally]) ifFalse: [^ self errorOutOfBounds].
	^ buffer at: head + anInteger - 2 \\ buffer size + 1