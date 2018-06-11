private
clusterForFile: aFile onDirectory: aDirectory
	| chain |
	chain := self clustersChainFor: aDirectory.
	chain do: [:number | | cluster | 
		cluster := self clusterAt: number.
		(cluster hasRecord: aFile identifier) ifTrue: [^cluster]].
	self error:'cluster not found!'