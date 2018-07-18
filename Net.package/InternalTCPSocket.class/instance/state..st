control
state: aTCPState
	Transcript cr; show: self printString, ' -> ', aTCPState name.
	aTCPState socket: self.
	state := aTCPState