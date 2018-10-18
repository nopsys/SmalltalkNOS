private
clustersBeginOffset
	^self fatBeginOffset + (self numberOfCopiesOfFAT * self bytesPerFAT)