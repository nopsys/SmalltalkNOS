as yet unclassified
packetWithData: aString sequence: anInteger
	| tcp ip |
	tcp _ TCPPacket new: aString size.
	tcp sequence: anInteger.
	tcp replaceFrom: tcp headerSize + 1 to: tcp size with: aString asByteArray startingAt: 1.
	ip _ IPPacket with: tcp.
	^ ip data