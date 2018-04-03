system startup
installOn: aComputer
	| keyboard p |
	keyboard := self onPort: 16r60.
	aComputer interruptController addHandler: keyboard forIRQ: 1.
	aComputer interruptController addHandler: keyboard forIRQ: 12.
	self fixPasteUpMorphIfPharo.
	Cursor normal show.

	^ true
