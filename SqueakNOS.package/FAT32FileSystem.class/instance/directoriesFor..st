services
directoriesFor: aDirectory
	| cluster directories clusters subdirs|
	directories := OrderedCollection new.
	clusters := self clustersChainFor: aDirectory.
	clusters do: [ :aNumber |
		cluster := self clusterAt: aNumber.
		subdirs := (cluster directoryRecords 
			select: [:record | record isInternal not]
			thenCollect: [:record | Directory 
												named: record name
												identifier: record firstCluster
												filesystem: self
												directory: aDirectory]).
		directories addAll: subdirs
	].
	^directories