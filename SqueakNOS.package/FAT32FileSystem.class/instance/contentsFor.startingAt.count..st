services
contentsFor: aFile startingAt: position count: count
	| bytesPerCluster size clusterOffset needed clusters |
	
	bytesPerCluster := self bytesPerCluster.
	aFile identifier > 0 ifFalse: [^ByteArray new].
	size := count min: aFile size.
	clusterOffset := position \\ bytesPerCluster.
	needed := (size + clusterOffset / bytesPerCluster) ceiling.
	clusters := self clustersChainFor: aFile.
	clusters removeFirst: position // bytesPerCluster.
	clusters size >= needed ifTrue: [clusters removeLast: clusters size - needed].
	^self readFromClusters: clusters startingAt: clusterOffset count: size.
