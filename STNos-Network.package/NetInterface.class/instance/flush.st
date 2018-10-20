control
flush
	"Discard all packets on the interface queue."
	[inputQ isEmpty] whileFalse: [inputQ next]