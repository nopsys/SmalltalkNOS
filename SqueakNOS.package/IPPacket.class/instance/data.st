accessing
data
	| proto |
	proto := self protocol.
	Packet allSubclassesDo: [ :each | each protocol = proto ifTrue: [^ each on: self]].
	^ nil