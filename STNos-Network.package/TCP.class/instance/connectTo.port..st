protocol
connectTo: remoteAddress port: remotePort
	^ NetStream on: (self socketTo: remoteAddress port: remotePort) connect