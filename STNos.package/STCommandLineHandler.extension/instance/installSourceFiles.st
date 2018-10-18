*STNos-TemporaryCompatibility
installSourceFiles
	"Install the previously loaded source files"
	Computer isSqueakNOS ifTrue:[ ^self ].
	sourceFiles ifNil: [ ^ self ].
	[ sourceFiles do: [ :reference | 
		self installSourceFile: reference ]
	] ensure: [ sourceFiles := nil ].
	