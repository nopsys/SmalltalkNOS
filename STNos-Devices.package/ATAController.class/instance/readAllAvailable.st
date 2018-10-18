private
readAllAvailable
	| answer |
	answer := ''.
	[ self waitUntilDeviceIsReadyForTransfer ] whileTrue: [ answer := answer , self readSector ].
	answer = ''
		ifTrue: [ Transcript show: 'Status: ' , self atAlternateStatusReg asString , String cr.
			self error: 'Could not read anything.' ].
	^ answer