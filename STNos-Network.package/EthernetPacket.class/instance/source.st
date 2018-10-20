accessing
source
	^ EthernetAddress bytes: (self copyFrom: 7 to: 12)