instance creation
bytes: aByteArray offset: anInteger
	| type |
	type := aByteArray at: anInteger + 1.
	self allSubclassesDo: [ :each |
		type = each type ifTrue: [^ each new bytes: aByteArray; offset: anInteger]].
	^ super bytes: aByteArray offset: anInteger