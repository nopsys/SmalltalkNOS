private
addRecordNamed: aString firstCluster: aNumber
	| index record addEndOfDirectoryRecord |
	index := self firstFreeRecordIndex.
	addEndOfDirectoryRecord := (index = 1 or: [(self recordAt: index) isEndOfDirectory and: [(index = self lastIndex) not]]).
	record := self recordAt: index.
	record name: aString; firstCluster: aNumber.
	addEndOfDirectoryRecord ifTrue: [self addEndOfDirectoryRecord].
	^record
	