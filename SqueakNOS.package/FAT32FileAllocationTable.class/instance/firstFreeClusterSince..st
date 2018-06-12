services
firstFreeClusterSince: aNumber
	| current limit entry |
	current := aNumber max: 2.
	limit := aNumber - 1.
	[
	entry := self at: current.
	entry isZero ] whileFalse: [
		current = limit ifTrue: [ self error: 'No more free space on filesystem' ].
		current := current + 1.
		current = self countOfClusters ifTrue: [ current := 2 ].
	].
	^current