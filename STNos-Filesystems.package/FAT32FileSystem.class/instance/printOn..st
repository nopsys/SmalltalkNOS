accessing
printOn: out
	"Answer the value of stream"

	out nextPutAll: 'FAT32FileSystem'; cr;
		nextPutAll: 'Begin of FAT: ', self fatBeginOffset hex; cr;
		nextPutAll: 'Begin of data clusters: ', self clustersBeginOffset hex; cr; cr;
		nextPutAll: bootRecordCache printString; cr; cr;
		nextPutAll: self root printString.
	 