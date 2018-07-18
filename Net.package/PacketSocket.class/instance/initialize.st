initialization
initialize
	super initialize.
	adapter := 'eth0'.
	filter := ''.
	promiscuous := true.
	snapshot := 1500.
	mtu := snapshot.
	packetClass := EthernetPacket.
	semaphore := Semaphore new