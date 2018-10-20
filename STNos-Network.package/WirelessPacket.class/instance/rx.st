accessing
rx
	"Answer the receiving wireless station."
	^ EthernetAddress bytes: (self copyFrom: 17 to: 22)