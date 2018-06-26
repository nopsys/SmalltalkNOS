protocol
socketTo: remoteAddress port: remotePort localPort: localPort
	^ self | (InternalTCPSocket new localPort: localPort; remoteAddress: remoteAddress; remotePort: remotePort)