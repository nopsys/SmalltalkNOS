flow
output: aPacket
	| data |
	address isNil ifFalse: [aPacket source: address].
	aPacket ttl = 0 ifTrue: [aPacket ttl: 255].
	aPacket id: 65536 atRandom - 1.
	aPacket setChecksum.
	(data := aPacket data) ifNotNil: [data setChecksum].
	aPacket size <= self mtu
		ifTrue: [super output: aPacket]
		ifFalse: [Transcript cr; show: 'FRAGMENTING!'.
				(aPacket fragmentsSized: self mtu) do: [ :each | super output: each]]