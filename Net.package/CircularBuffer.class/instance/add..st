adding
add: anObject
	tally < buffer size ifFalse: [^ self errorOutOfBounds].
	buffer at: head + tally - 1 \\ buffer size + 1 put: anObject.
	tally := tally + 1.
	^ anObject