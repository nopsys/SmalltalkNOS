private
setPositionToClusterRecordInFAT: aNumber
	stream position: self fatBeginOffset + (aNumber * self fatRecordSize).
	