accessing
removeChainOf: id
	| chain |
	chain := self clustersChainFor: id.
	chain do: [:index | self at: index put: 0]