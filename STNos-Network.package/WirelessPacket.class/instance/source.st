accessing
source
	^ EthernetAddress bytes: (self copyFrom: 5 to: 10)