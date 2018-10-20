accessing
bootRecord
	^ bootRecordCache ifNil: [ bootRecordCache := FAT32BootRecord bytes: (contents copyFrom: 1 to: 512) ]