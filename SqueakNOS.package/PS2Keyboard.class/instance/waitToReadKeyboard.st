low level protocol
waitToReadKeyboard
	| delay |
	self keyboardOutputBufferFull ifTrue: [^true].
	delay := Delay forMilliseconds: 1.
	1000 timesRepeat: [
		"FIXME: cannot wait because the process switch seems to kill the image"
		"delay wait."
		self keyboardOutputBufferFull ifTrue: [^true]
	].
	self report: 'timedout out witing for keyboard input.'.
	^false
	