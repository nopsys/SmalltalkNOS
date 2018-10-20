protocol
socketTo: remoteAddress port: remotePort localPort: localPort
	^ self | (InternalUDPSocket new localPort: localPort; remoteAddress: remoteAddress; remotePort: remotePort)