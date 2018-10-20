services
addCluster: aNumber to: chainId
	| chain last |
	chainId > 0 ifTrue: [
		chain := self chainFor: chainId.
		last := chain last.
		chain add: aNumber.
		self at: last put: aNumber].
	self at: aNumber put: self clusterChainEndValue
	