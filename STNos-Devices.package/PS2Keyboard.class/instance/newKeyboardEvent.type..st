irq handling
newKeyboardEvent: aCharacter type: byteType
	" taken from EventSensor >> #nextEventSynthesized "
	| event |
	"Transcript show: aCharacter asciiValue."
	(event := Array new: 8)
		at: 1 put: EventTypeKeyboard; "evt type"
		at: 2 put: Time millisecondClockValue; "time stamp"
		at: 3 put: aCharacter asciiValue; "char code"
		at: 4 put: byteType; "key press/release"
		at: 5 put: modifiersAndButtons >> 3; "modifier keys"
		at: 6 put: aCharacter asciiValue; "utf32Code, TODO: translate to utf32"
		at: 7 put: 0; "reserved"
		at: 8 put: 1. "window index"

	events nextPut: event.