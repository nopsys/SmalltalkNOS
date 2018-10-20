accessing
tx
	"Answer the transmitting wireless station."
	^ EthernetAddress bytes: (self copyFrom: 25 to: 30)