accessing
destination
	^ EthernetAddress bytes: (self copyFrom: 11 to: 16)