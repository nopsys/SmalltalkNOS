private
writeClusters: clusters startingAt: start with: bytes startingAt: bytesStart count: count
	| written offset toWrite |
	written := 0.
	offset := start - 1.
	self
		adjacentClustersListFrom: clusters
		do: [ :clusterStartNumber :numberOfClusters | 
			| cluster index |
			toWrite := numberOfClusters * self bytesPerCluster - offset min: count - written.
			index := self positionOfCluster: clusterStartNumber.
			clusterContents
				replaceFrom: index + offset
				to: index + offset + toWrite - 1
				with: bytes
				startingAt: bytesStart + written.
			offset := 0.
			written := written + toWrite ].
	^ written