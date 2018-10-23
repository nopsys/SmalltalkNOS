decorator
initialize: aComputer
	super initialize: aComputer.
	self initDisplay.
	aComputer processor: X86Processor new.
	PIC8259 installOn: aComputer.
	PS2Keyboard installOn: aComputer.
	CMOS installOn: aComputer.
	UART16550 installOn: aComputer.
	"USBUHCIController installOn: self.
	SDDevice installOn: self.
	self initializeBridge.
	RemoteObjectChannel installOn: self.
	self printPCIDebug"
	