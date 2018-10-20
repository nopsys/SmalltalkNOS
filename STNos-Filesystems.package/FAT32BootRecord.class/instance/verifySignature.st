as yet unclassified
verifySignature
	self bootRecordSignature = 16rAA55
		ifFalse: [ self error: 'This does not look as a FAT32 partition' ]