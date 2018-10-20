accessing
destination
	^ EthernetAddress bytes: (self copyFrom: 1 to: 6)