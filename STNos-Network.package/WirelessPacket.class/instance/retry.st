accessing-control
retry
	"Answer true if this is a retransmission."
	^ (self frameControl bitShift: -11) odd