formatting
pureFAT32FilenameFor: aFileName
	| path basename extension finalName |
	path := aFileName asFileReference path.
	basename := path base. 
	extension := path extension.
	(basename size > self class basenameMaxSize or: [extension size > self class extensionMaxSize]) ifTrue: [
		basename := (basename first: self class basenameTruncationIndex) , '~1'
	].
	extension := extension copyFrom: 1 to: (extension size min: self class extensionMaxSize).
	finalName := (extension size > 0) ifTrue: [ basename , '.' , extension ] ifFalse: [ basename ].
	^ (String streamContents: [:str | (path parent / finalName) asFileReference gtDisplayOn: str]) 
	