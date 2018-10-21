decorator
initialize: aComputer
	"LancePCIDevice installOn: self."
	Realtek8139PCIDevice installOn: aComputer.
	aComputer networkingStack: (EthernetInterface on: aComputer defaultNetworkInterface)
	