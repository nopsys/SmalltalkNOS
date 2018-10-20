initialization
setUp
	packet := IPPacket with: (UDPPacket new: 1000).
	packet
		source: (InternetAddress fromString: '1.2.3.4');
		destination: (InternetAddress fromString: '5.6.7.8').
	packet setChecksum.
	fragments := packet fragmentsSized: self fragmentSize