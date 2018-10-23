decorator
initialize: aComputer
	"LancePCIDevice installOn: self."
	super initialize: aComputer.
	LancePCIDevice installOn: aComputer.
	aComputer networkingStack: (EthernetInterface on: aComputer defaultNetworkInterface)
	