control
up
	self down.
	process := [[process isNil] whileFalse: [self processLoop]] newProcess.
	device when: #input: send: #handleInputPacket: to: self.
	device up.
	process resume