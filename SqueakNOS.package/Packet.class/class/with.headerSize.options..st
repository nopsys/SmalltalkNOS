instances creation
with: aPacketOrByteArray headerSize: anInteger options: aCollection
	| optionsSize answer index |
	optionsSize := aCollection inject: 0 into: [ :count :each | count + each size].
	answer := self with: aPacketOrByteArray headerSize: anInteger + optionsSize + 1.
	index := anInteger + 1.
	aCollection do: [ :each |
		answer replaceFrom: index to: index + each size - 1 with: each.
		index := index + each size].
	answer at: index put: 0.
	^ answer