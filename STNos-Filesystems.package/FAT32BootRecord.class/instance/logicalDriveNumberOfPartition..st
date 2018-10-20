as yet unclassified
logicalDriveNumberOfPartition: anInteger
	^ bytes unsignedByteAt: 16r41 put: anInteger