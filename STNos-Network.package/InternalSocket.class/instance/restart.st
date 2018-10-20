control
restart
	"Restart myself, if I was active."

	self isActive ifTrue: [self reopen]