helpers
swapSourceAndDestination
	| oldSource |
	oldSource := self source.
	self source: self destination.
	self destination: oldSource