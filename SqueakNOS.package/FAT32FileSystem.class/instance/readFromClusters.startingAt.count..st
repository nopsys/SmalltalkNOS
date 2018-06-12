private
readFromClusters: clusters startingAt: aNumber count: count
	| index contentsIndex cluster bytes result qty |
	result := ByteArray new: count.
	index := aNumber.
	contentsIndex := 1.	
	clusters do: [ :clusterNumber |
			cluster := self clusterAt: clusterNumber.
			qty := (cluster size min: self bytesPerCluster - index) min: count - contentsIndex + 1. 
			bytes := cluster at: index count: qty.
			result replaceFrom: contentsIndex to: contentsIndex + bytes size - 1 with: bytes.
			index := 0.
			contentsIndex := contentsIndex + bytes size].
	^result
	
	