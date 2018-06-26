accessing - addresses map
baseIOAddress: index
	| addr |
	addr := self baseAddressRegister: index.
	addr even ifTrue: [^self halt "is memory"].
	^addr bitAnd: 3 bitInvert
