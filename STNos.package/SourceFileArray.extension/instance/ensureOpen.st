*STNos-PharoCompatibility
ensureOpen
	"Ensure that the source and changes files are opened."
	Computer isSqueakNOS ifTrue: [ ^self ].
	files := Array
		with: PharoFilesOpener default sourcesFileOrNil
		with: PharoFilesOpener default changesFileOrNil.
			
	readOnlyQueue := SharedQueue new.