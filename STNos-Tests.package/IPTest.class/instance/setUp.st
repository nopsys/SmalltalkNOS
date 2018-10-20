running
setUp
	ip1 := self newHostWithAddress: (InternetAddress fromString: '192.168.88.1').
	ip2 := self newHostWithAddress: (InternetAddress fromString: '192.168.88.2').

	loopback := NetInterface loopback.

	loopback | PluggableConduit transcripter | ip1.
	loopback | PluggableConduit transcripter | ip2.

	loopback up