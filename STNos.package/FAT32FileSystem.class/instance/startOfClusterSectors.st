private
startOfClusterSectors
	^(self numberOfCopiesOfFAT * self bytesPerFAT) / self bytesPerSector + self reservedSectors.