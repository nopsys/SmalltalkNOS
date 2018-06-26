private
readAllAvailable: sectorCount
	| each answer nextPosition |
	each := self sectorSize.
	answer := ByteArray new: sectorCount * each.
	nextPosition := 1.
	sectorCount timesRepeat: [ 
			self waitUntilDeviceIsReadyForTransfer.
			answer
				replaceFrom: nextPosition
				to: nextPosition + self sectorSize - 1
				with: self readSector
				startingAt: 1.
			nextPosition := nextPosition + each ].
	^ answer