testing
isComplete
	fragments last mf ifTrue: [^ false].
	fragments first fragmentOffset = 0 ifFalse: [^ false].
	fragments size > 1 ifFalse: [^ false].
	1 to: fragments size - 1 do: [ :each |
		(fragments at: each) fragmentOffset + (fragments at: each) length < (fragments at: each+1) fragmentOffset ifTrue: [^ false]].
	^ true