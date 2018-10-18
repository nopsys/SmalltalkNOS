*STNos-PharoCompatibility
readOnlyCopy
	"Answer a read only copy of self. The caller is responsible of closing it."
	Computer isSqueakNOS ifTrue: [ ^self species new ].
	^ self species new
		sourcesFileStream: (self sourcesFileStream ifNotNil: [:aStream | aStream readOnlyCopy]);
		changesFileStream: (self changesFileStream ifNotNil: [:aStream | aStream readOnlyCopy]);
		yourself