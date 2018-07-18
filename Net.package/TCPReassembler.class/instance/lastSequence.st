accessing
lastSequence
	| answer |
	answer := sequence - 1.
	self do: [ :each | answer := answer max: each lastSequence].
	^ answer