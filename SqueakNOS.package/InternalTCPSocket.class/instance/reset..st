protocol
reset: aPacket
	"Send a RESET in response to aPacket."
	| tcp ip |
	aPacket rst ifTrue: [^ self].
	tcp := (TCPPacket new: 0)
		source: aPacket destination;
		destination: aPacket source;
		rst: true.
	aPacket ack
		ifTrue: [tcp sequence: aPacket ackSequence]
		ifFalse: [tcp ackSequence: aPacket nextSequence; ack: true].
	(ip := IPPacket with: tcp)
		destination: aPacket envelope source.
	self << ip