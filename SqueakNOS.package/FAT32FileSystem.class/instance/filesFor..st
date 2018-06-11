services
filesFor: aDirectory
	| cluster files clusters subfiles|
	files := OrderedCollection new.
	clusters := self clustersChainFor: aDirectory.
	clusters do: [ :aNumber |
		cluster := self clusterAt: aNumber.
		subfiles  := cluster fileRecords collect: [:record |
			File 
				named: record name
				identifier: record firstCluster
				filesystem: self
				directory: aDirectory
				size: record size].
		files addAll: subfiles
	].
	^files