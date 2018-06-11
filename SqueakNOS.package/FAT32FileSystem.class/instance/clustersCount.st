private
clustersCount
	^(bootRecordCache numberOfSectorsInPartition - (self numberOfCopiesOfFAT * self bytesPerFAT / self bytesPerSector + self reservedSectors)) / self sectorsPerCluster.