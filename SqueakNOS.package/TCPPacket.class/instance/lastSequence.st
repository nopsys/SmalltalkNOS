helpers
lastSequence
	"Answer the last sequence number for this packet."
	| answer |
	answer := self sequence + self length - 1.
	self syn ifTrue: [answer := answer + 1].
	self fin ifTrue: [answer := answer + 1].
	^ answer