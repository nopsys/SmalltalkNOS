flow
output: aPacket 
	| ip |
	(ip := IPPacket with: aPacket options: options) source: localAddress;
		 destination: remoteAddress;
		 ttl: ttl;
		 tos: tos;
		 df: df;
		 id: 65536 atRandom - 1.
	ip setChecksum.
	ip data setChecksum.
	ip size <= self mtu
		ifTrue: [super output: ip]
		ifFalse: [Transcript cr; show: 'FRAGMENTING!'.
			(ip fragmentsSized: self mtu)
				do: [:each | super output: each]]