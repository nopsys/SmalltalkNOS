protocol
listenAt: localPort
	^ NetStream on: (self socketAt: localPort) listen