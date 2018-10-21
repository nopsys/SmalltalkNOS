decorator
initialize: aComputer
	aComputer processor: X86Processor new.
	PIC8259 installOn: aComputer.
	PS2Keyboard installOn: aComputer.
	CMOS installOn: self.
	UART16550 installOn: self.
	"USBUHCIController installOn: self.
	SDDevice installOn: self.
	self initializeBridge.
	RemoteObjectChannel installOn: self."