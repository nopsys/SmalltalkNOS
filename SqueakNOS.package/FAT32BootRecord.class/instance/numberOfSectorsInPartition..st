as yet unclassified
numberOfSectorsInPartition: anInteger
	^ bytes unsignedLongAt: 16r21 put: anInteger