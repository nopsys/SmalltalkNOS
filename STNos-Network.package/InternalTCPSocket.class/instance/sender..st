control
sender: aTCPOutputState
	Transcript cr; show: self printString, ' -> ', aTCPOutputState name.
	aTCPOutputState socket: self.
	sender := aTCPOutputState