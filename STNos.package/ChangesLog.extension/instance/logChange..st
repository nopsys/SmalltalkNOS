*STNos-PharoCompatibility
logChange: aStringOrText
	"Write the argument, aString, onto the changes file."

	| aString |
	Computer isSqueakNOS ifTrue: [ ^self ].
	self assureStartupStampLogged.

	aString := aStringOrText asString.
	(aString findFirst: [ :char | char isSeparator not ]) = 0
		ifTrue: [ ^ self ].	"null doits confuse replay"

	SourceFiles changesWriteStreamDo: [ :changesFile |
		changesFile
			cr; cr;
			nextChunkPut: aString ].

	SourceFiles forceChangesToDisk