protocol
offeredWindow
	"Answer the 'offered' or 'maximum send' window, i.e. the range of sequence
	numbers for bytes that either have been sent but are not (yet) aknowledged
	or have not been sent but may be sent."
	^ lastAcknowledged + 1 to: lastAcknowledged + sendingWindowSize