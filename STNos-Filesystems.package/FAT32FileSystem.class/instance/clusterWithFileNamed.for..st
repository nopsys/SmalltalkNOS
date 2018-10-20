private
clusterWithFileNamed: aString for: aDirectory
	| chain |
	chain := self clustersChainFor: aDirectory.
	^chain detect: [:number | (self clusterAt: number) hasRecordNamed: aString]