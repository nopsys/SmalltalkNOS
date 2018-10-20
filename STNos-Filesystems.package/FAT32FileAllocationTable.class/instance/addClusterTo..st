services
addClusterTo: chainStart
	| last index chain |
	last := chainStart > 0 ifTrue: 
		[(self clustersChainFor: chainStart) last]
	 ifFalse:
		 [0].
	index := self firstFreeClusterSince: last.
	"Transcript show: 'Adding cluster: ', index printString, 'to: ', chainStart printString, Character cr."
	self addCluster: index to: chainStart.
	^index