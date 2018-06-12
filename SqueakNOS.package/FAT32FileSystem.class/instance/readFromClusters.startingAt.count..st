private
readFromClusters: clusters startingAt: offset count: count
	| startOffset contentsIndex cluster bytes result qty remaining |
	result := ByteArray new: count.
	startOffset := offset.
	contentsIndex := 1.
	remaining := count.
	clusters do: [ :clusterNumber |
			cluster := self clusterAt: clusterNumber.
			qty := cluster size min: remaining. 
			bytes := cluster at: startOffset + 1 count: qty.
			result replaceFrom: contentsIndex to: contentsIndex + qty - 1 with: bytes.
			startOffset := 0.
			remaining := remaining - qty.
			contentsIndex := contentsIndex + qty].
	^result
	
	