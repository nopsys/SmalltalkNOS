converting
segmentFrom: start size: size
	^BlockDeviceSegment on: self from: start to: start + size - 1