*STNos-TemporaryCompatibility
string 
	"Answer the receiver's string if remote files are enabled, or nil."
	Computer isSqueakNOS ifTrue: [ ^nil ].
	^ SourceFiles 
		readStreamAtFileIndex: sourceFileNumber 
		atPosition: filePositionHi 
		ifPresent: [ :readStream | readStream nextChunk ]
		ifAbsent: [ nil ]	