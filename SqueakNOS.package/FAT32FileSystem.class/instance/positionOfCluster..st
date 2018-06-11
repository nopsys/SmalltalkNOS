private
positionOfCluster: aNumber
	| corrected |
	corrected := self clusterIndexCorrection: aNumber.
	^ corrected * self bytesPerCluster