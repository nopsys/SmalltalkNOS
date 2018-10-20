services
internalClusterChainFor: chainId preferredSize: aPreferredSize
	| chain next end  |
	next := chainId.
	chain := OrderedCollection new: aPreferredSize.
	end := self clusterChainEndValue.
	[ next := next bitAnd: 16r0FFFFFFF.
	next < end ]
		whileTrue: [ next = 0
				ifTrue: [ self error: 'broken FAT: found empty cluster while following cluster chain' ].
			chain add: next.
			next := self at: next ].
	^ chain