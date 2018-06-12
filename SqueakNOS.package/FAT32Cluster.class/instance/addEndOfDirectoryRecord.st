private
addEndOfDirectoryRecord
	| index record |
	index := self firstFreeRecordIndex.
	record := self recordAt: index.
	record beEndOfDirectory.