accessing
rawData
	^ self copyFrom: self headerSize + 1 to: self headerSize + self length