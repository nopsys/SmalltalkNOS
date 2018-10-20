accessing
request: aNetAddress enqueue: aPacket
	| request |
	request :=
		requests detect: [ :one | one protocol = aNetAddress]
		ifNone: [requests add: (ARPRequest new arp: self; protocol: aNetAddress; retryTime: timer time)].
	request enqueue: aPacket.
	request retryTime >= timer time
		ifFalse: [request tries \\ 5 = 0 ifTrue: [HostDown new address: aNetAddress; signal].
				^ self].
	request send.
	request retryTime: timer time + (request tries \\ 5 = 0 ifTrue: [self retryMilliseconds] ifFalse: [self pauseMilliseconds])