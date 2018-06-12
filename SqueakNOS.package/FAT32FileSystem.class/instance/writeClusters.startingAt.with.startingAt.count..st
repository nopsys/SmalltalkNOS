private
"protocol: #private"

writeClusters: clusters startingAt: aNumber with: stringOrByteArray startingAt: anotherNumber count: count
	| written start toWrite |
	written := 0.
	start := aNumber - 1.
	"count < 1000"
	"clusters first = 51761 ifTrue: [self halt]."
	self adjacentClustersListFrom: clusters do: [ :clusterStartNumber :numberOfClusters | |cluster|
		"(51761 between: clusterStartNumber and: clusterStartNumber + numberOfClusters) ifTrue: [self halt]."
		cluster := self clusterAt: clusterStartNumber.
		toWrite := cluster size * numberOfClusters - start min: count - written.
		self positionOfCluster: clusterStartNumber.
		clusterContents replaceFrom: start + 1 to: toWrite + start with: stringOrByteArray startingAt: anotherNumber + written.
		start := 0.
		written := written + toWrite.
	].
	^written