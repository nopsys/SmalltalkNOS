protocol
usableWindow
	"Answer the 'usable window', i.e. the range of sequence numbers for bytes
	that may be sent for the first time. The usable window is always contained
	in the offered window."
	^ sequence + 1 to: lastAcknowledged + sendingWindowSize