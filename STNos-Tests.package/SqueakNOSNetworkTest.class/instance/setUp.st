as yet unclassified
setUp
	eth := EthernetInterface on: Computer current defaultNetworkDevice.
	eth internetAddress: self localAddress.
	eth up