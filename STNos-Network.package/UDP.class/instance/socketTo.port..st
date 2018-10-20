protocol
socketTo: remoteAddress port: remotePort
	| localPort |
	localPort := (0 to: 65535) atRandom. self flag: #hack.
	^ self | (InternalUDPSocket new localPort: localPort; remoteAddress: remoteAddress; remotePort: remotePort)