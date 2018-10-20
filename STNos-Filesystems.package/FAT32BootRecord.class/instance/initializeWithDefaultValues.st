initialization
initializeWithDefaultValues
	self
		bytesPerSector: 512;
		sectorsPerCluster: 1;
		reservedSectors: 16r20;
		numberOfCopiesOfFAT: 2;
		mediaDescriptor: 16rF8;
		sectorsPerTrack: 16r20;
		numberOfHeads: 64;
		numberOfHiddenSectors: 16r20;
		sectorsPerFAT: 16r020C;
		flags: 0;
		versionOfFAT32Drive: 0;
		clusterNumberOfStartOfRootDir: 2;
		sectorNumberOfFSInformationSector: 1;
		logicalDriveNumberOfPartition: 16r80;
		extendedSignature: 16r29;
		volumeNameOfPartition: 'NO NAME    ';
		fatName: 'FAT32   ';
		executableCode: '0';
		bootRecordSignature: 16rAA55