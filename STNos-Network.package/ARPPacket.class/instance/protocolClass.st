accessing
protocolClass
	NetAddress allSubclassesDo: [ :each | each type = self protocolType ifTrue: [^ each]].
	^ nil