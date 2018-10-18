initialization
setDirectionToReadFromBus
	self command: (self command bitAnd: 2r11110111)