services
shrinkClusterChainOf: aNumber to: length
	| chain size toRemove last |
	chain := self clustersChainFor: aNumber.
	size := chain size.
	size > length ifFalse: [^self].
	toRemove := length - size.
	last := chain at: length.
	self at: last put: self clusterChainEndValue. 
	chain := chain last: toRemove.
	chain do: [:index | self at: index put: 0].
	
