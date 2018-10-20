accessing
data
	| type |
	type := self type.
	Packet allSubclassesDo: [ :each | each etherType = type ifTrue: [^ each on: self]].
	^ nil