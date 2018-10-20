as yet unclassified
packetWithData: aString sequence: anInteger
	| tcp ip |
	tcp := TCPPacket new: aString size.
	tcp sequence: anInteger.
	tcp replaceFrom: tcp headerSize + 1 to: tcp size with: aString asByteArray startingAt: 1.
	ip := IPPacket with: tcp.
	^ ip data