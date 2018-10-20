protocol
sendSyn
	| tcp |
	tcp := (TCPPacket new: 0)
		syn: true.
"	tcp options: (Array with: (MSS new value: mss))."
	self nextPut: tcp