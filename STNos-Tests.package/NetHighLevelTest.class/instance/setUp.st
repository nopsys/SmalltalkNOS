as yet unclassified
setUp
	net1 := self newHostWithEthernet: (EthernetAddress fromString: '00:48:54:85:CC:51') ip: (InternetAddress fromString: '192.168.88.1').
	net2 := self newHostWithEthernet: (EthernetAddress fromString: '00:82:44:55:DD:67') ip: (InternetAddress fromString: '192.168.88.2').

	loopback := NetInterface loopback.

	loopback "| TranscripterConduit new" | net1.
	loopback "| TranscripterConduit new" | net2.

	loopback up