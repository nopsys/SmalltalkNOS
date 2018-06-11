services
internalClusterChainFor: aClusterNumber preferredSize: aPreferredSize
	| chain nextCluster position| 
	nextCluster := aClusterNumber.
	chain := OrderedCollection new: aPreferredSize.
	[(nextCluster bitAnd: 16r0FFFFFFF) = 16r0FFFFFFF] whileFalse: [
		chain add: nextCluster.	
		position := nextCluster * self recordSize.
		nextCluster := contents unsignedLongAt: position
	].
	^chain