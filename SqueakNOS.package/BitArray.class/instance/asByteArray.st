converting
asByteArray
	^ ((1 to: self byteSize) collect: [ :each | self atByte: each]) asByteArray