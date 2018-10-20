testing
finished
	"Answer true if a FIN and all data before it has been received."
	finSequence notNil ifTrue: [^ true].
	self update.
	finSequence notNil ifTrue: [^ true].
	self do: [ :each | each fin ifTrue: [^ true]].
	^ false