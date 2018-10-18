services
at: startSector count: sectorCount of: deviceNumber

		| answer |
	answer := ByteArray new: sectorCount * self sectorSize.
		self at: startSector count: sectorCount of: deviceNumber into: answer.
		^answer
