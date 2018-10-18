*STNos-PharoCompatibility
fillInto: aByteArray at: startIndex size: size
	NopsysC uniqueInstance
		fillInto: aByteArray
		at: startIndex - 1
		size: size
		with: self