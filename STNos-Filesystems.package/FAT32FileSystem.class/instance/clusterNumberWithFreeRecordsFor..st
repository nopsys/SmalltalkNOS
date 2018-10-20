private
clusterNumberWithFreeRecordsFor: aDirectory
	| chain |
	chain := self clustersChainFor: aDirectory.
	^chain 
		detect: [:number | (self clusterAt: number) hasFreeRecords]
	 	ifNone: [self addClusterTo: aDirectory]