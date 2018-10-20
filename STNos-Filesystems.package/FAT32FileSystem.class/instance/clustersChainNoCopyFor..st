private
clustersChainNoCopyFor: aFileSystemContent
	| count |
	count := aFileSystemContent isFile
		ifTrue: [ (aFileSystemContent size / self bytesPerCluster) ceiling ]
		ifFalse: [ 0 ].
	^ fat clustersChainNoCopyFor: aFileSystemContent identifier preferredSize: count