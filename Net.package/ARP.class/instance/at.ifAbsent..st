accessing
at: aNetAddress ifAbsent: exceptionBlock
	entries do: [ :each | each protocol = aNetAddress ifTrue: [^ each hardware]].
	^ self
		at: (routes gatewayTo: aNetAddress ifNone: [^ exceptionBlock value]) gateway
		ifAbsent: exceptionBlock