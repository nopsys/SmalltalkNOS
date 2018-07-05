tests
testPing
	| ping |
	ping := Ping new.
	(net1 findA: ICMP) | ping.
	self assert: (ping ping: (net2 findA: IP) address).
	self assert: (ping ping: (net1 findA: IP) address).
	self deny: (ping ping: (InternetAddress fromString: '192.168.88.123'))