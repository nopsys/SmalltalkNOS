accessing
hardwareClass
	NetAddress allSubclassesDo: [ :each | each type = self hardwareType ifTrue: [^ each]].
	^ nil