accessing
next
	| answer |
	tally > 0 ifFalse: [^ self errorOutOfBounds].
	answer := self first.
	tally := tally - 1.
	head := head \\ buffer size + 1.
	^ answer