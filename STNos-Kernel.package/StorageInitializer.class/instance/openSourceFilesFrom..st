as yet unclassified
openSourceFilesFrom: aFileSystem
	| directory source sources changes change |
	"Smalltalk imageName = SmalltalkImage lastImageName
		ifFalse: [SmalltalkImage lastImageName: Smalltalk imageName.
				Smalltalk isPharo ifTrue: [ Author fullName: '' ] ifFalse: [ Utilities setAuthorInitials: '' ] ]."
	sources := aFileSystem pureFAT32FilenameFor: Smalltalk sourcesName.
	sources := sources copyFrom: 2 to: sources size.
	changes := aFileSystem pureFAT32FilenameFor: Smalltalk changesName.
	directory := aFileSystem root.
	(directory fileExists: sources)
		ifTrue: [ source := (directory readOnlyFileNamed: sources) readStream ].